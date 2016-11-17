require 'rails_helper'

RSpec.describe "MasterCompanies", type: :request do
  describe "GET /master_companies" do
    it "works! (now write some real specs)" do
      get master_companies_path
      expect(response).to have_http_status(200)
    end
  end
end
