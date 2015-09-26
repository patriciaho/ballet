require 'rails_helper'

RSpec.describe "student_sessions/show", :type => :view do
  before(:each) do
    @student_session = assign(:student_session, StudentSession.create!(
      :student_id => 1,
      :session_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
