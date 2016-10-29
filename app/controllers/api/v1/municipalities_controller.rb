class Api::V1::MunicipalitiesController < ApplicationController
  before_action :get_municipality, except: [:index, :create]
  
  def index
    @municipalities = Municipality.all
  end

  def create
    municipality = Municipality.new(municipality_params)
    
    if municipality.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @municipality.update(municipality_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @municipality.destroy
  end
  
  private
  
  def get_municipality
    @municipality = Municipality.find_by(id: params[:municipality][:id])
  end
  
  def municipality_params
    params.permit( :country_code ,:department_code ,:municipality_code ,:code ,:name ,:zone )
  end
end
