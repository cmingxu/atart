require 'rails_helper'

RSpec.describe DiscoverController, type: :controller do

  describe "GET #hot" do
    it "returns http success" do
      get :hot
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #channel" do
    it "returns http success" do
      get :channel
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #fund_raising" do
    it "returns http success" do
      get :fund_raising
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #shop" do
    it "returns http success" do
      get :shop
      expect(response).to have_http_status(:success)
    end
  end

end
