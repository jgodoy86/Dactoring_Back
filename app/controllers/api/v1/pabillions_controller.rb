class Api::V1::PabillionsController < ApplicationController
  before_action :get_pabillion, except: [:index, :create]

  def index
    @pabillions = Pabillion.all
  end

  def create
    pabillion = Pabillion.new(pabillion_params)

    if pabillion.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @pabillion.update(pabillion_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @pabillion.destroy
  end

  private

  def get_pabillion
    @pabillion = Pabillion.find(params[:id])
  end

  def pabillion_params
    params.require(:pabillion).permit(:company_code, :branch_office_code, :code, :name, :state )
  end
end
