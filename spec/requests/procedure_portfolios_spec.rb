require 'rails_helper'

RSpec.describe "ProcedurePortfolios", type: :request do
  describe "GET /procedure_portfolios" do
    it "works! (now write some real specs)" do
      get procedure_portfolios_path
      expect(response).to have_http_status(200)
    end
  end
end
