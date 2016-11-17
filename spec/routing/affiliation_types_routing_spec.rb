require "rails_helper"

RSpec.describe AffiliationTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/affiliation_types").to route_to("affiliation_types#index")
    end

    it "routes to #new" do
      expect(:get => "/affiliation_types/new").to route_to("affiliation_types#new")
    end

    it "routes to #show" do
      expect(:get => "/affiliation_types/1").to route_to("affiliation_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/affiliation_types/1/edit").to route_to("affiliation_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/affiliation_types").to route_to("affiliation_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/affiliation_types/1").to route_to("affiliation_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/affiliation_types/1").to route_to("affiliation_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/affiliation_types/1").to route_to("affiliation_types#destroy", :id => "1")
    end

  end
end
