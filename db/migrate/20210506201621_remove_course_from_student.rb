class RemoveCourseFromStudent < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :course, :string
  end
end
