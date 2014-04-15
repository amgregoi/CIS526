class Employment < ActiveRecord::Base
  include Filterable

  validates :title, presence: true, length: {minimum: 1, maximum: 100}
  validates :employer, presence: true, length: {minimum: 1, maximum: 100}
  validates_inclusion_of :job_type, :in => %w(Faculty Full-Time Part-Time Internship Scholarship)
  validates :description, presence: true, length: {minimum: 1, maximum: 2000}
  
  
end
