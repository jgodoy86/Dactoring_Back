class Api::V1::ConcentrationsController < ApplicationController
  before_action :get_concentration, except: [:index, :create]

  def index
    @concentrations = Concentration.all
  end

  def create
    concentration = Concentration.new(concentration_params)

    if concentration.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @concentration.update(concentration_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @concentration.destroy
  end

  private 

  def get_concentration
    @concentration = Concentration.find_by(id: params[:concentration][:id])
  end

  def concentration_params
    params.require(:concentration).permit( :code , :description)
  end
end
