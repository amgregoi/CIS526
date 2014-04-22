json.array!(@employments) do |employment|
  json.extract! employment, :id, :title, :employer, :job_type, :description
  json.url employment_url(employment, format: :json)
end
