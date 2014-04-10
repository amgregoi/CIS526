class Event < ActiveRecord::Base
  validates :event_date, presence: true
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :location, presence: true, length: {minimum: 1, maximum: 50}
  validates :description, presence: true, length: {minimum: 1, maximum: 200}
end
