class Api::V1::AplicationViasController < ApplicationController
  before_action :get_aplication_via, except: [:index, :create]

  def index
    @aplication_vias = AplicationVium.all
  end

  def create
    aplication_via = AplicationVium.new(aplication_via_params)

    if aplication_via.save
      renderJson(:created, { notice: "aplication_viao creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "aplication_viao no creado" })
    end
  end

  def update
    @aplication_via.update(aplication_via_params)
    renderJson(:created, { notice: 'aplication_via Actualizado' })
  end

  def destroy
    @aplication_via.destroy
  end

  private

  def get_aplication_via
    @aplication_via = AplicationVium.find_by(id: params[:aplication_via][:id])
  end

  def aplication_via_params
    params.require(:aplication_via).permit(:code, :description, :sex)
  end
end
