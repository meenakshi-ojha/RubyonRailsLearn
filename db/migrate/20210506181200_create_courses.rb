class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      
      t.string :name
      t.string :department

      t.timestamps
    end
  end
end
