require 'rails_helper'

RSpec.describe "StudentSessions", :type => :request do
  describe "GET /student_sessions" do
    it "works! (now write some real specs)" do
      get student_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
