json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :department, :course_number, :credits
  json.url course_url(course, format: :json)
end
