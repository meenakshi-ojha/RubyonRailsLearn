class AddDepartmentToCourses < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :department, null: false, foreign_key: true
  end
end
