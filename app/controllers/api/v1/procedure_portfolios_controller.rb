class Api::V1::ProcedurePortfoliosController < ApplicationController
  before_action :set_procedure_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /procedure_portfolios
  # GET /procedure_portfolios.json
  def index
    @procedure_portfolios = ProcedurePortfolio.all
  end

  # GET /procedure_portfolios/1
  # GET /procedure_portfolios/1.json
  def show
  end

  # GET /procedure_portfolios/new
  def new
    @procedure_portfolio = ProcedurePortfolio.new
  end

  # GET /procedure_portfolios/1/edit
  def edit
  end

  # POST /procedure_portfolios
  # POST /procedure_portfolios.json
  def create
    @procedure_portfolio = ProcedurePortfolio.new(procedure_portfolio_params)

    if @procedure_portfolio.save
      format.json { render :show, status: :created, location: @procedure_portfolio }
    else
      format.json { render json: @procedure_portfolio.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /procedure_portfolios/1
  # PATCH/PUT /procedure_portfolios/1.json
  def update
    if @procedure_portfolio.update(procedure_portfolio_params)
      format.json { render :show, status: :ok, location: @procedure_portfolio }
    else
      format.json { render json: @procedure_portfolio.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /procedure_portfolios/1
  # DELETE /procedure_portfolios/1.json
  def destroy
    @procedure_portfolio.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure_portfolio
      @procedure_portfolio = ProcedurePortfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedure_portfolio_params
      params.require(:procedure_portfolio).permit(:company_code, :code, :procedure_code, :procedure_cost)
    end
end
