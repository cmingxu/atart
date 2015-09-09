require 'rails_helper'

RSpec.describe "FundRaiseSupports", type: :request do
  describe "GET /fund_raise_supports" do
    it "works! (now write some real specs)" do
      get fund_raise_supports_path
      expect(response).to have_http_status(200)
    end
  end
end
