json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :title, :office, :phone_number, :email
  json.url faculty_url(faculty, format: :json)
end
