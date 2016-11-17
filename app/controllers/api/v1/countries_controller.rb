class Api::V1::CountriesController < ApplicationController
  before_action :get_country, except: [:index, :create]

  def index
    @countries = Country.all
  end

  def create
    country = Country.new(country_params)

    if country.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @country.update(country_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @country.destroy
  end

  private

  def get_country
    @country = Country.find_by(id: params[:country][:id])
  end

  def country_params
    params.require(:country).permit(:code, :name )
  end
end
