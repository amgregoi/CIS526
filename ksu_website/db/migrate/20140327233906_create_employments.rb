class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :title
      t.string :employer
      t.string :job_type
      t.string :description

      t.timestamps
    end
  end
end
