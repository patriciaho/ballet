json.array!(@student_sessions) do |student_session|
  json.extract! student_session, :id, :student_id, :session_id
  json.url student_session_url(student_session, format: :json)
end
