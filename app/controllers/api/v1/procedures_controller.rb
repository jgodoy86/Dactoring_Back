class Api::V1::ProceduresController < ApplicationController
  before_action :get_procedure, except: [:index, :create]

  def index
    @procedures = Procedure.all
  end

  def create
    procedure = Procedure.new(procedure_params)

    if procedure.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @procedure.update(company_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @procedure.destroy
  end

  private

  def get_procedure
    @procedure = Procedure.find(params[:id])
  end

  def procedure_params
    params.require(:procedure).permit(:company_code, :code, :description, :procedural_type, :service_purpose,
      :procedural_time, :sex, :begin_day, :end_day, :require_dx, :informed_consent,
      :attention_level, :state)
  end
end
