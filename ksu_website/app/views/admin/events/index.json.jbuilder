json.array!(@events) do |event|
  json.extract! event, :id, :title, :event_date, :location, :description
  json.url admin_event_url(event, format: :json)
end
