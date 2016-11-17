class Api::V1::SuppliesController < ApplicationController
  before_action :get_supply, except: [:index, :create]

  def index
    @supplies = Supply.all
  end

  def create
    supply = Supply.new(supply_params)

    if supply.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @supply.update(supply_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @supply.destroy
  end

  private

  def get_supply
    @supply = Supply.find(params[:id])
  end

  def supply_params
    params.require(:supply).permit(:anato_code ,:farmaceutic_form_code ,:active_principle_code ,
    :concentration_code ,:atc_code ,:rips_code ,:control_code ,:pos_code)
  end
end
