class Api::V1::SupplyPortfoliosController < ApplicationController
  before_action :set_supply_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /supply_portfolios
  # GET /supply_portfolios.json
  def index
    @supply_portfolios = SupplyPortfolio.all
  end

  # GET /supply_portfolios/1
  # GET /supply_portfolios/1.json
  def show
  end

  # GET /supply_portfolios/new
  def new
    @supply_portfolio = SupplyPortfolio.new
  end

  # GET /supply_portfolios/1/edit
  def edit
  end

  # POST /supply_portfolios
  # POST /supply_portfolios.json
  def create
    @supply_portfolio = SupplyPortfolio.new(supply_portfolio_params)

    if @supply_portfolio.save
      format.json { render :show, status: :created, location: @supply_portfolio }
    else
      format.json { render json: @supply_portfolio.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /supply_portfolios/1
  # PATCH/PUT /supply_portfolios/1.json
  def update
    if @supply_portfolio.update(supply_portfolio_params)
      format.json { render :show, status: :ok, location: @supply_portfolio }
    else
      format.json { render json: @supply_portfolio.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /supply_portfolios/1
  # DELETE /supply_portfolios/1.json
  def destroy
    @supply_portfolio.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_portfolio
      @supply_portfolio = SupplyPortfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_portfolio_params
      params.require(:supply_portfolio).permit(:company_code, :code, :state)
    end
end
