class Session < ActiveRecord::Base
  has_many :student_sessions, dependent: :destroy
  has_many :students, :through => :student_sessions

  default_scope { order('date ASC') }
  scope :upcoming, -> { where('date >= ?', Date.today) }

  def price_range
    total_sessions = self.student_sessions.count
    definite_sessions = self.student_sessions.where(:certainty => 'Definite').count
    maybe_sessions = self.student_sessions.where(:certainty => 'Maybe').count
    if definite_sessions == 0 && maybe_sessions != 0
      price = (115/maybe_sessions).ceil
      "$" + price.to_s
    else
      low_range = (115/total_sessions).round
      high_range = (115/definite_sessions).round

      return "$" + low_range.to_s if low_range == high_range

      "$" + low_range.to_s + " - $" + high_range.to_s
    end if total_sessions != 0
  end
end
