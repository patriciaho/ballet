class StudentSession < ActiveRecord::Base
  belongs_to :student
  belongs_to :session
  validates :student, :presence => { :message => 'Student cannot be blank, submission not saved' }
  validates :session, :presence => { :message => 'Class cannot be blank, submission not saved' }
end
