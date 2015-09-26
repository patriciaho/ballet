require 'rails_helper'

RSpec.describe "student_sessions/edit", :type => :view do
  before(:each) do
    @student_session = assign(:student_session, StudentSession.create!(
      :student_id => 1,
      :session_id => 1
    ))
  end

  it "renders the edit student_session form" do
    render

    assert_select "form[action=?][method=?]", student_session_path(@student_session), "post" do

      assert_select "input#student_session_student_id[name=?]", "student_session[student_id]"

      assert_select "input#student_session_session_id[name=?]", "student_session[session_id]"
    end
  end
end
