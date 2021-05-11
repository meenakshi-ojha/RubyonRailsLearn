class AddDepartmentToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :department, null: false, foreign_key: true
  end
end
