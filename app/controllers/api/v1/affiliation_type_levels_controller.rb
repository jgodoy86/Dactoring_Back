class Api::V1::AffiliationTypeLevelsController < ApplicationController
  before_action :set_affiliation_type_level, only: [:show, :edit, :update, :destroy]

  # GET /affiliation_type_levels
  # GET /affiliation_type_levels.json
  def index
    @affiliation_type_levels = AffiliationTypeLevel.all
  end

  # GET /affiliation_type_levels/1
  # GET /affiliation_type_levels/1.json
  def show
  end

  # GET /affiliation_type_levels/new
  def new
    @affiliation_type_level = AffiliationTypeLevel.new
  end

  # GET /affiliation_type_levels/1/edit
  def edit
  end

  # POST /affiliation_type_levels
  # POST /affiliation_type_levels.json
  def create
    @affiliation_type_level = AffiliationTypeLevel.new(affiliation_type_level_params)

    if @affiliation_type_level.save
      format.json { render :show, status: :created, location: @affiliation_type_level }
    else
      format.json { render json: @affiliation_type_level.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /affiliation_type_levels/1
  # PATCH/PUT /affiliation_type_levels/1.json
  def update
    if @affiliation_type_level.update(affiliation_type_level_params)
      format.json { render :show, status: :ok, location: @affiliation_type_level }
    else
      format.json { render json: @affiliation_type_level.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /affiliation_type_levels/1
  # DELETE /affiliation_type_levels/1.json
  def destroy
    @affiliation_type_level.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affiliation_type_level
      @affiliation_type_level = AffiliationTypeLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affiliation_type_level_params
      params.require(:affiliation_type_level).permit(:affiliation_code, :level, :description, :sgsss_code)
    end
end
