class Api::V1::NeighborhoodsController < ApplicationController
  before_action :get_neighborhood, except: [:index, :create]

  def index
    @neighborhoods = Neighborhood.all
  end

  def create
    neighborhood = Neighborhood.new(neighborhood_params)

    if neighborhood.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @neighborhood.update(neighborhood_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @neighborhood.destroy
  end

  private

  def get_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end

  def neighborhood_params
    params.require(:neighborhood).permit( :country_code ,:department_code ,:municipality_code ,:code ,:name ,:zone )
  end
end
