class Api::V1::FarmaceuticFormsController < ApplicationController
  before_action :get_farmaceutic_form, except: [:index, :create]
  
  def index
    @farmaceutic_forms = FarmaceuticForm.all
  end

  def create
    farmaceutic_form = FarmaceuticForm.new(farmaceutic_form_params)
    
    if farmaceutic_form.save
      renderJson(:created, { notice: "farmaceutic_formo creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "farmaceutic_formo no creado" })
    end
  end

  def update
    @farmaceutic_form.update(farmaceutic_form_params)
    renderJson(:created, { notice: 'farmaceutic_formo Actualizado' })
  end

  def destroy
    @farmaceutic_form.destroy
  end
  
  private
  
  def get_farmaceutic_form
    @farmaceutic_form = FarmaceuticForm.find_by(id: params[:farmaceutic_form][:id])
  end
  
  def farmaceutic_form_params
    params.permit(:code, :description, :aplication_code)
  end
  
end
