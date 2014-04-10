class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :title
      t.string :office
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
