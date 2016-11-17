require "rails_helper"

RSpec.describe SupplyPortfolioDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/supply_portfolio_details").to route_to("supply_portfolio_details#index")
    end

    it "routes to #new" do
      expect(:get => "/supply_portfolio_details/new").to route_to("supply_portfolio_details#new")
    end

    it "routes to #show" do
      expect(:get => "/supply_portfolio_details/1").to route_to("supply_portfolio_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/supply_portfolio_details/1/edit").to route_to("supply_portfolio_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/supply_portfolio_details").to route_to("supply_portfolio_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/supply_portfolio_details/1").to route_to("supply_portfolio_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/supply_portfolio_details/1").to route_to("supply_portfolio_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/supply_portfolio_details/1").to route_to("supply_portfolio_details#destroy", :id => "1")
    end

  end
end
