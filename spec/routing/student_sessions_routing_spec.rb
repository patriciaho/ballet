require "rails_helper"

RSpec.describe StudentSessionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_sessions").to route_to("student_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/student_sessions/new").to route_to("student_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/student_sessions/1").to route_to("student_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_sessions/1/edit").to route_to("student_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_sessions").to route_to("student_sessions#create")
    end

    it "routes to #update" do
      expect(:put => "/student_sessions/1").to route_to("student_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_sessions/1").to route_to("student_sessions#destroy", :id => "1")
    end

  end
end
