class Api::V1::AffiliationTypesController < ApplicationController
  before_action :set_affiliation_type, only: [:show, :edit, :update, :destroy]

  def index
    @affiliation_types = AffiliationType.all
  end

  # GET /affiliation_types/1
  # GET /affiliation_types/1.json
  def show
  end

  # GET /affiliation_types/new
  def new
    @affiliation_type = AffiliationType.new
  end

  # GET /affiliation_types/1/edit
  def edit
  end

  # POST /affiliation_types
  # POST /affiliation_types.json
  def create
    @affiliation_type = AffiliationType.new(affiliation_type_params)

    if @affiliation_type.save
      renderJson(:created, { notice: "Tipo de Afiliación creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Error" })
    end
  end

  # PATCH/PUT /affiliation_types/1
  # PATCH/PUT /affiliation_types/1.json
  def update
    if @affiliation_type.update(affiliation_type_params)
      format.json { render :show, status: :ok, location: @affiliation_type }
    else
      format.json { render json: @affiliation_type.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /affiliation_types/1
  # DELETE /affiliation_types/1.json
  def destroy
    @affiliation_type.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affiliation_type
      @affiliation_type = AffiliationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affiliation_type_params
      params.require(:affiliation_type).permit(:code, :description)
    end
end
