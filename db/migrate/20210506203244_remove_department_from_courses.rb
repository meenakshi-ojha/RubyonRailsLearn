class RemoveDepartmentFromCourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :department, :string
  end
end
