require "rails_helper"

RSpec.describe FundRaisingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fund_raisings").to route_to("fund_raisings#index")
    end

    it "routes to #new" do
      expect(:get => "/fund_raisings/new").to route_to("fund_raisings#new")
    end

    it "routes to #show" do
      expect(:get => "/fund_raisings/1").to route_to("fund_raisings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fund_raisings/1/edit").to route_to("fund_raisings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fund_raisings").to route_to("fund_raisings#create")
    end

    it "routes to #update" do
      expect(:put => "/fund_raisings/1").to route_to("fund_raisings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fund_raisings/1").to route_to("fund_raisings#destroy", :id => "1")
    end

  end
end
