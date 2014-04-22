class AddAttributeToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :club_id, :string
  end
end
