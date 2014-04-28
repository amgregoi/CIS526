json.array!(@employments) do |employment|
  json.extract! employment, :id, :title, :employer, :job_type, :description
  json.url admin_employment_url(employment, format: :json)
end
