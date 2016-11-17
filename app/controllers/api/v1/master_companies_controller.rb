class Api::V1::MasterCompaniesController < ApplicationController
  before_action :set_master_company, only: [:show, :edit, :update, :destroy]

  # GET /master_companies
  # GET /master_companies.json
  def index
    @master_companies = MasterCompany.all
  end

  # GET /master_companies/1
  # GET /master_companies/1.json
  def show
  end

  # GET /master_companies/new
  def new
    @master_company = MasterCompany.new
  end

  # GET /master_companies/1/edit
  def edit
  end

  # POST /master_companies
  # POST /master_companies.json
  def create
    @master_company = MasterCompany.new(master_company_params)

    if @master_company.save
      format.json { render :show, status: :created, location: @master_company }
    else
      format.json { render json: @master_company.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /master_companies/1
  # PATCH/PUT /master_companies/1.json
  def update
    if @master_company.update(master_company_params)
      format.json { render :show, status: :ok, location: @master_company }
    else
      format.json { render json: @master_company.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /master_companies/1
  # DELETE /master_companies/1.json
  def destroy
    @master_company.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_company
      @master_company = MasterCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_company_params
      params.require(:master_company).permit(:company_code, :code, :nit,
        :verification_digit, :social_reason, :commercial_name, :web_page,
        :contributor_type, :rips_code, :address, :cellphone, :phone)
    end
end
