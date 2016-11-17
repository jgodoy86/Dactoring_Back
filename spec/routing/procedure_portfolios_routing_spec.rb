require "rails_helper"

RSpec.describe ProcedurePortfoliosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/procedure_portfolios").to route_to("procedure_portfolios#index")
    end

    it "routes to #new" do
      expect(:get => "/procedure_portfolios/new").to route_to("procedure_portfolios#new")
    end

    it "routes to #show" do
      expect(:get => "/procedure_portfolios/1").to route_to("procedure_portfolios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/procedure_portfolios/1/edit").to route_to("procedure_portfolios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/procedure_portfolios").to route_to("procedure_portfolios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/procedure_portfolios/1").to route_to("procedure_portfolios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/procedure_portfolios/1").to route_to("procedure_portfolios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/procedure_portfolios/1").to route_to("procedure_portfolios#destroy", :id => "1")
    end

  end
end
