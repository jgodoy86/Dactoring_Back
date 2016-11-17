class Api::V1::MedicsController < ApplicationController
  before_action :get_medic, except: [:index, :create]

  def index
    @medics = Medic.all
  end

  def create
    medic = Medic.new(medic_params)

    if medic.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @medic.update(medic_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @medic.destroy
  end

  private

  def get_medic
    @medic = Medic.find_by(id: params[:medic][:id])
  end

  def medic_params
    params.require(:medic).permit(:medic_code ,:medic_id ,:id_type ,:first_name1 ,:first_name2 ,:last_name1 ,:last_name2 ,:medical_record ,:phone ,:cellphone ,:email ,:agend_management ,:specialty_code)
  end
end
