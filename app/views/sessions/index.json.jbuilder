json.array!(@sessions) do |session|
  json.extract! session, :id, :date
  json.url session_url(session, format: :json)
end
