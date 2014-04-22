class Club < ActiveRecord::Base
  include Filterable
  
  validates :name, presence: true, length: {minimum: 1, maximum: 50}, uniqueness: true
  validates :url, length: {minimum: 1, maximum: 100}, format: { without: /\s/ }  # No spaces; URLs can also be omitted
  validates :description, presence: true, length: {minimum: 1, maximum: 1000}
  validates :meeting, presence: true, length: {minimum: 1, maximum: 50}
  
  # Select scopes, used for search
  scope :name_keywords, ->(keywords) { where "name like ?", "#{keywords}%" }
end
