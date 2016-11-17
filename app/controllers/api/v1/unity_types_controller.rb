class Api::V1::UnityTypesController < ApplicationController
  before_action :get_unity_type, except: [:index, :create]

  def index
    @unity_types = UnityType.all
  end

  def create
    unity_type = UnityType.new(unity_type_params)

    if unity_type.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @unity_type.update(unity_type_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @unity_type.destroy
  end

  private

  def get_unity_type
    @unity_type = UnityType.find(params[:id])
  end

  def unity_type_params
    params.require(:unity_type).permit(:code , :name )
  end
end
