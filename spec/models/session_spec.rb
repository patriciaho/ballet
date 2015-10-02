require 'rails_helper'

RSpec.describe Session, :type => :model do
  describe "price range" do
    let :session do
      FactoryGirl.create(:session)
    end

    let :students do
      FactoryGirl.create_list(:student, 3)
    end

    let! :def_student_sessions do
      [
        FactoryGirl.create(:student_session, :session => session, :student => students[0]),
        FactoryGirl.create(:student_session, :session => session, :student => students[1])
      ]
    end

    let! :maybe_student_session do
      FactoryGirl.create(:student_session, :certainty => 'Maybe', :session => session, :student => students[2])
    end

    it "should give the right price range" do
      expect(session.price_range).to eq("$38 - $57")
    end

    it "should give one price if there is no range" do
      maybe_student_session.certainty = "Definite"
      maybe_student_session.save!

      expect(session.price_range).to eq("$38")
    end
  end
end
