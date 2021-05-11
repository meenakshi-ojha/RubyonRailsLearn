class RemoveDepartmentIdFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :departmentId, :integer
  end
end
