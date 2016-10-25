class Session < ActiveRecord::Base
  has_many :student_sessions, dependent: :destroy
  has_many :students, :through => :student_sessions

  default_scope { order('date ASC') }
  scope :upcoming, -> { where('date >= ?', (Time.now - 28.hours)) }

  def price_range
    total_sessions = self.student_sessions.count
    return "$" + (135.0/total_sessions).ceil.to_s
  end
end
