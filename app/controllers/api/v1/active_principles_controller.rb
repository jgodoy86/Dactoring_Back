class Api::V1::ActivePrinciplesController < ApplicationController
  before_action :get_active_principle, except: [:index, :create]

  def index
    @active_principles = ActivePrinciple.all
  end

  def create
    active_principle = ActivePrinciple.new(active_principle_params)

    if active_principle.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @active_principle.update(active_principle_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @active_principle.destroy
  end

  private

  def get_active_principle
    @active_principle = ActivePrinciple.find(params[:id])
  end

  def active_principle_params
    params.require(:active_principle).permit(:code, :short_principle, :large_principle, :name)
  end
end
