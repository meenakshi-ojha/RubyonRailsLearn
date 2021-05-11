class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.integer :departmentId
      t.integer :contact
      t.string :email

      t.timestamps
    end
  end
end
