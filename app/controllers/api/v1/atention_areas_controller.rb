class Api::V1::AtentionAreasController < ApplicationController
  before_action :get_atention_area, except: [:index, :create]

  def index
    @atention_areas = AtentionArea.all
  end

  def create
    atention_area = AtentionArea.new(atention_area_params)

    if atention_area.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @atention_area.update(atention_area_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @atention_area.destroy
  end

  private

  def get_atention_area
    puts '----------------------------------------------------------------'
    puts params
    @atention_area = AtentionArea.find(params[:id])
  end

  def atention_area_params
    puts '----------------------------------------------------------------'
    puts params
    params.require(:atention_area).permit(:company_code, :branch_office_code,
     :pabillion_code, :code,
     :name, :type, :start_hour, :end_hour, :state )
  end
end
