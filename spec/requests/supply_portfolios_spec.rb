require 'rails_helper'

RSpec.describe "SupplyPortfolios", type: :request do
  describe "GET /supply_portfolios" do
    it "works! (now write some real specs)" do
      get supply_portfolios_path
      expect(response).to have_http_status(200)
    end
  end
end
