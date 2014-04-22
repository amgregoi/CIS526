class Event < ActiveRecord::Base
  include Filterable

  validates :event_date, presence: true
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :location, presence: true, length: {minimum: 1, maximum: 50}
  validates :description, presence: true, length: {minimum: 1, maximum: 200}
  
  # Select scopes, used for search
  scope :title_keywords, ->(keywords) { where("title like ?", "%#{keywords}%") }
  scope :chosen_date, ->(chosen_date) { where 'event_date' => DateTime.new(chosen_date.year,chosen_date.month,1)..(DateTime.new(chosen_date.year,chosen_date.month,1) + 1.month)  }
  scope :free_food_select, ->(free_food_select) { where free_food: true }
end
