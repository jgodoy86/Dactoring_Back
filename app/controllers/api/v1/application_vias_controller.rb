class Api::V1::ApplicationViasController < ApplicationController
  before_action :get_application_via, except: [:index, :create]

  def index
    @application_vias = ApplicationVium.all
  end

  def create
    application_via = ApplicationVium.new(application_via_params)

    if application_via.save
      renderJson(:created, { notice: "application_viao creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "application_viao no creado" })
    end
  end

  def update
    @application_via.update(application_via_params)
    renderJson(:created, { notice: 'application_via Actualizado' })
  end

  def destroy
    @application_via.destroy
  end

  private

  def get_application_via
    @application_via = ApplicationVium.find(params[:id])
  end

  def application_via_params
    params.require(:application_via).permit(:code, :description, :sex)
  end
end
