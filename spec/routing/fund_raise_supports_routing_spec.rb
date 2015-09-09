require "rails_helper"

RSpec.describe FundRaiseSupportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fund_raise_supports").to route_to("fund_raise_supports#index")
    end

    it "routes to #new" do
      expect(:get => "/fund_raise_supports/new").to route_to("fund_raise_supports#new")
    end

    it "routes to #show" do
      expect(:get => "/fund_raise_supports/1").to route_to("fund_raise_supports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fund_raise_supports/1/edit").to route_to("fund_raise_supports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fund_raise_supports").to route_to("fund_raise_supports#create")
    end

    it "routes to #update" do
      expect(:put => "/fund_raise_supports/1").to route_to("fund_raise_supports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fund_raise_supports/1").to route_to("fund_raise_supports#destroy", :id => "1")
    end

  end
end
