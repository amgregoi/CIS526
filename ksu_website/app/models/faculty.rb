class Faculty < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 1, maximum: 50}, uniqueness: true
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :office, presence: true, length: {minimum: 1, maximum: 50}
  # No spaces in email
  validates :email, presence: true, length: {minimum: 1, maximum: 100}, format: { without: /\s/ }
  # Phones numbers are stored as digits; use number_to_phone helper to format in views
  validates :phone_number, presence: true, :numericality => true, :length => { :minimum => 10, :maximum => 15 }

  dragonfly_accessor :image  # defines a reader/writer for image
end
