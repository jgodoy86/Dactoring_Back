class Api::V1::PatientsController < ApplicationController
  before_action :get_patient, except: [:index, :create]
  
  def index
    @patients = Patient.all
  end

  def create
    patient = Patient.new(patient_params)
    
    if patient.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @patient.update(patient_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @patient.destroy
  end
  
  private
  
  def get_patient
    @patient = Patient.find_by(id: params[:patient][:id])
  end
  
  def patient_params
    params.permit(:number_id, :document_type, :last_name1, :last_name2, :first_name1, :first_name2, :special_atention, :country, :department, :municipality, :neighborhood, :email, :address, :work_company, :marital_status, :education_level_state, :birthday, :education_level, :ocupation, :profession, :sex, :phone, :office_phone)
  end
end
