class Employment < ActiveRecord::Base
  include Filterable

  # Contains all the types of jobs
  JOB_TYPE_SELECTIONS = %w(Faculty Full-Time Part-Time Internship Scholarship)
  
  validates :title, presence: true, length: {minimum: 1, maximum: 100}
  validates :employer, presence: true, length: {minimum: 1, maximum: 100}
  validates_inclusion_of :job_type, :in => JOB_TYPE_SELECTIONS
  validates :description, presence: true, length: {minimum: 1, maximum: 2000}
  
  # Select scopes, used for searching  
  scope :title_keywords, ->(keywords) { where "title like ?", "#{keywords}%" }
  scope :employer_keywords, ->(keywords) { where "employer like ?", "#{keywords}%" }
  scope :job_type_select, ->(type) { where job_type: type }
  
end
