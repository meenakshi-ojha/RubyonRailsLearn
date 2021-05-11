class AddCoursesToStudent < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :course
  end
end
