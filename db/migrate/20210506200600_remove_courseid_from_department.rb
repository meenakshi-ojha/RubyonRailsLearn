class RemoveCourseidFromDepartment < ActiveRecord::Migration[6.1]
  def change
    remove_column :departments, :courseid, :integer
  end
end
