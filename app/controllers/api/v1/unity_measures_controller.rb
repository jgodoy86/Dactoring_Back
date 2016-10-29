class Api::V1::UnityMeasuresController < ApplicationController
  before_action :get_unity_measure, except: [:index, :create]
  
  def index
    @unity_measures = UnityMeasure.all
  end

  def create
    unity_measure = UnityMeasure.new(unity_measure_params)
    
    if unity_measure.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @unity_measure.update(unity_measure_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @unity_measure.destroy
  end
  
  private 
  
  def get_unity_measure
    @unity_measure = UnityMeasure.find_by(id: params[:unity_measure][:id])
  end
  
  def unity_measure_params
    params.permit(:code , :name , :code_unity_type)
  end
end
