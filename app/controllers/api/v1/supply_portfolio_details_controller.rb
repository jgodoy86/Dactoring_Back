class Api::V1::SupplyPortfolioDetailsController < ApplicationController
  before_action :set_supply_portfolio_detail, only: [:show, :edit, :update, :destroy]

  # GET /supply_portfolio_details
  # GET /supply_portfolio_details.json
  def index
    @supply_portfolio_details = SupplyPortfolioDetail.all
  end

  # GET /supply_portfolio_details/1
  # GET /supply_portfolio_details/1.json
  def show
  end

  # GET /supply_portfolio_details/new
  def new
    @supply_portfolio_detail = SupplyPortfolioDetail.new
  end

  # GET /supply_portfolio_details/1/edit
  def edit
  end

  # POST /supply_portfolio_details
  # POST /supply_portfolio_details.json
  def create
    @supply_portfolio_detail = SupplyPortfolioDetail.new(supply_portfolio_detail_params)

    if @supply_portfolio_detail.save
      format.json { render :show, status: :created, location: @supply_portfolio_detail }
    else
      format.json { render json: @supply_portfolio_detail.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /supply_portfolio_details/1
  # PATCH/PUT /supply_portfolio_details/1.json
  def update
    if @supply_portfolio_detail.update(supply_portfolio_detail_params)
      format.json { render :show, status: :ok, location: @supply_portfolio_detail }
    else
      format.json { render json: @supply_portfolio_detail.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /supply_portfolio_details/1
  # DELETE /supply_portfolio_details/1.json
  def destroy
    @supply_portfolio_detail.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_portfolio_detail
      @supply_portfolio_detail = SupplyPortfolioDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_portfolio_detail_params
      params.require(:supply_portfolio_detail).permit(:company_code, :supply_portfolio_code, :supply_code, :supply_cost)
    end
end
