require "rails_helper"

RSpec.describe AffiliationTypeLevelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/affiliation_type_levels").to route_to("affiliation_type_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/affiliation_type_levels/new").to route_to("affiliation_type_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/affiliation_type_levels/1").to route_to("affiliation_type_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/affiliation_type_levels/1/edit").to route_to("affiliation_type_levels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/affiliation_type_levels").to route_to("affiliation_type_levels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/affiliation_type_levels/1").to route_to("affiliation_type_levels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/affiliation_type_levels/1").to route_to("affiliation_type_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/affiliation_type_levels/1").to route_to("affiliation_type_levels#destroy", :id => "1")
    end

  end
end
