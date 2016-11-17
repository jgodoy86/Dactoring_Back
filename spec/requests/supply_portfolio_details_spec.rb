require 'rails_helper'

RSpec.describe "SupplyPortfolioDetails", type: :request do
  describe "GET /supply_portfolio_details" do
    it "works! (now write some real specs)" do
      get supply_portfolio_details_path
      expect(response).to have_http_status(200)
    end
  end
end
