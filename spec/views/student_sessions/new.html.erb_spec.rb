require 'rails_helper'

RSpec.describe "student_sessions/new", :type => :view do
  before(:each) do
    assign(:student_session, StudentSession.new(
      :student_id => 1,
      :session_id => 1
    ))
  end

  it "renders new student_session form" do
    render

    assert_select "form[action=?][method=?]", student_sessions_path, "post" do

      assert_select "input#student_session_student_id[name=?]", "student_session[student_id]"

      assert_select "input#student_session_session_id[name=?]", "student_session[session_id]"
    end
  end
end
