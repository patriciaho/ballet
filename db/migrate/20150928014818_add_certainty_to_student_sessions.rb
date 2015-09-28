class AddCertaintyToStudentSessions < ActiveRecord::Migration
  def change
    add_column :student_sessions, :certainty, :string
  end
end
