class DropJoinTableCourseStudent < ActiveRecord::Migration[6.1]
  def change
    drop_join_table :courses, :students do |t|
      # t.index [:course_id, :student_id]
      # t.index [:student_id, :course_id]
    end
  end
end
