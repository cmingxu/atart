require 'rails_helper'

RSpec.describe "FundRaisings", type: :request do
  describe "GET /fund_raisings" do
    it "works! (now write some real specs)" do
      get fund_raisings_path
      expect(response).to have_http_status(200)
    end
  end
end
