require "rails_helper"

RSpec.describe SupplyPortfoliosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/supply_portfolios").to route_to("supply_portfolios#index")
    end

    it "routes to #new" do
      expect(:get => "/supply_portfolios/new").to route_to("supply_portfolios#new")
    end

    it "routes to #show" do
      expect(:get => "/supply_portfolios/1").to route_to("supply_portfolios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/supply_portfolios/1/edit").to route_to("supply_portfolios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/supply_portfolios").to route_to("supply_portfolios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/supply_portfolios/1").to route_to("supply_portfolios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/supply_portfolios/1").to route_to("supply_portfolios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/supply_portfolios/1").to route_to("supply_portfolios#destroy", :id => "1")
    end

  end
end
