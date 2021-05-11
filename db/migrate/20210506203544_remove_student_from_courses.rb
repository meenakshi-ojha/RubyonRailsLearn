class RemoveStudentFromCourses < ActiveRecord::Migration[6.1]
  def change
    remove_reference :courses, :student, null: false, foreign_key: true
  end
end
