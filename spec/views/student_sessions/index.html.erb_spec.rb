require 'rails_helper'

RSpec.describe "student_sessions/index", :type => :view do
  before(:each) do
    assign(:student_sessions, [
      StudentSession.create!(
        :student_id => 1,
        :session_id => 2
      ),
      StudentSession.create!(
        :student_id => 1,
        :session_id => 2
      )
    ])
  end

  it "renders a list of student_sessions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
