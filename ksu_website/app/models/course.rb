class Course < ActiveRecord::Base
  include Filterable

  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :credits, presence: true
  validates :course_number, presence: true, uniqueness: true
  validates :department, presence: true, length: {minimum: 1, maximum: 10}
  validates :description, presence: true, length: {minimum: 1, maximum: 200}
  
  # Select scopes, used for searching  
  scope :keywords, ->(keywords) { (title_keywords(keywords) + description_keywords(keywords)).uniq }
  scope :department, ->(depmt) { where department: depmt }
  scope :course_num, ->(course_num) { where course_number: course_num }
  
  scope :title_keywords, ->(keywords) { where "title like ?", "#{keywords}%" }
  scope :description_keywords, ->(keywords) { where "description like ?", "#{keywords}%" }
end
