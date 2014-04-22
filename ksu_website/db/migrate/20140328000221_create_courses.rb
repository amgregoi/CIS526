class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :department
      t.integer :course_number
      t.integer :credits

      t.timestamps
    end
  end
end
