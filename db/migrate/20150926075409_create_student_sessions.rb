class CreateStudentSessions < ActiveRecord::Migration
  def change
    create_table :student_sessions do |t|
      t.integer :student_id
      t.integer :session_id

      t.timestamps
    end
  end
end
