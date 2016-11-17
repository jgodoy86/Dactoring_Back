class Api::V1::ProceduralTypesController < ApplicationController
  before_action :get_procedural_type, except: [:index, :create]

  def index
    @procedural_types = ProceduralType.all
  end

  def create
    procedural_type = ProceduralType.new(procedural_type_params)

    if procedural_type.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @procedural_type.update(procedural_type_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @procedural_type.destroy
  end

  private

  def get_procedural_type
    @procedural_type = ProceduralType.find_by(id: params[:procedural_type][:id])
  end

  def procedural_type_params
    params.require(:procedural_type).permit(:code ,:name ,:rips_code)
  end
end
