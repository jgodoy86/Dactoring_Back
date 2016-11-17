require "rails_helper"

RSpec.describe MasterCompaniesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/master_companies").to route_to("master_companies#index")
    end

    it "routes to #new" do
      expect(:get => "/master_companies/new").to route_to("master_companies#new")
    end

    it "routes to #show" do
      expect(:get => "/master_companies/1").to route_to("master_companies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/master_companies/1/edit").to route_to("master_companies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/master_companies").to route_to("master_companies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/master_companies/1").to route_to("master_companies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/master_companies/1").to route_to("master_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/master_companies/1").to route_to("master_companies#destroy", :id => "1")
    end

  end
end
