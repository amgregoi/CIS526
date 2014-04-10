class AddFreeFoodToEvents < ActiveRecord::Migration
  def change
    add_column :events, :free_food, :boolean
  end
end
