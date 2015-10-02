class Student < ActiveRecord::Base
  has_many :student_sessions, dependent: :destroy
  has_many :sessions, :through => :student_sessions

  default_scope { order('name ASC') }
end
