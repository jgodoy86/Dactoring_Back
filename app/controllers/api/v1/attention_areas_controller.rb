class Api::V1::AttentionAreasController < ApplicationController
  before_action :get_attention_area, except: [:index, :create]

  def index
    @attention_areas = AttentionArea.all
  end

  def create
    attention_area = AttentionArea.new(attention_area_params)

    if attention_area.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @attention_area.update(attention_area_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @attention_area.destroy
  end

  private

  def get_attention_area
    puts '----------------------------------------------------------------'
    puts params
    @attention_area = AttentionArea.find(params[:id])
  end

  def attention_area_params
    puts '----------------------------------------------------------------'
    puts params
    params.require(:attention_area).permit(:company_code, :branch_office_code,
     :pabillion_code, :code,
     :name, :type, :start_hour, :end_hour, :state )
  end
end
