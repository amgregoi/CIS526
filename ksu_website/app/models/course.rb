class Course < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :credits, presence: true
  validates :course_number, presence: true, uniqueness: true
  validates :department, presence: true, length: {minimum: 1, maximum: 10}
  validates :description, presence: true, length: {minimum: 1, maximum: 200}
end
