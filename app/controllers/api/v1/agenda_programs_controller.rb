class Api::V1::AgendaProgramsController < ApplicationController
  before_action :get_agenda_program, except: [:index, :create]
  
  def index
    @agenda_programs = AgendaProgram.all
  end

  def create
    agenda_program = AgendaProgram.new(agenda_program_params)
    
    if agenda_program.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @agenda_program.update(agenda_program_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @agenda_program.destroy
  end
  
  private 
  
  def get_agenda_program
    @agenda_program = AgendaProgram.find_by(id: params[:agenda_program][:id])
  end
  
  def agenda_program_params
    params.permit(:agenda_code ,:medic_code ,:specialty_code ,:consultory_code ,:date_time_patient ,:date_time_appointment ,:date_time_system ,:patient_id ,:patient_type_id ,:patient_affiliation_contract ,:agend_process ,:appointment_state ,:petition_time)
  end
end