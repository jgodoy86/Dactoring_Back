require 'rails_helper'

RSpec.describe "AffiliationTypeLevels", type: :request do
  describe "GET /affiliation_type_levels" do
    it "works! (now write some real specs)" do
      get affiliation_type_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
