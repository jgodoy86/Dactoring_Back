class Api::V1::ProceduralFinalitiesController < ApplicationController
  before_action :get_procedural_finality, except: [:index, :create]

  def index
    @procedural_finalities = ProceduralFinality.all
  end

  def create
    procedural_finality = ProceduralFinality.new(procedural_finality_params)

    if procedural_finality.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @procedural_finality.update(procedural_finality_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @procedural_finality.destroy
  end

  private

  def get_procedural_finality
    @procedural_finality = ProceduralFinality.find(params[:id])
  end

  def procedural_finality_params
    params.require(:procedural_finality).permit(:code ,:name)
  end
end
