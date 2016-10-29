class Api::V1::AgendasController < ApplicationController
  before_action :get_agenda, except: [:index, :create]
  
  def index
    @agendas = Agenda.all
  end

  def create
    agenda = Agenda.new(agenda_params)
    
    if agenda.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @agenda.update(agenda_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @agenda.destroy
  end
  
  private 
  
  def get_agenda
    @agenda = Agenda.find_by(id: params[:agenda][:id])
  end
  
  def agenda_params
    params.permit(:agenda_code ,:name ,:day ,:start_hour ,:end_hour ,:petition_time ,:max_patients ,:medic_code ,:specialty_code ,:consultory_code ,:agenda_state )
  end
end
