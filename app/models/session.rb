class Session < ActiveRecord::Base
  has_many :student_sessions
  has_many :students, :through => :student_sessions

    default_scope { order('date DESC') }
end
