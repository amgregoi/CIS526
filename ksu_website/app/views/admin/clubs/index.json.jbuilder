json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :description, :url, :meeting
  json.url admin_club_url(club, format: :json)
end
