class Api::V1::SpecialtiesController < ApplicationController
  before_action :get_specialty, except: [:index, :create]
  
  def index
    @specialties = Specialty.all
  end

  def create
    specialty = Specialty.new(specialty_params)
    
    if specialty.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @specialty.update(specialty_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @specialty.destroy
  end
  
  private
  
  def get_specialty
    @specialty = Specialty.find_by(id: params[:specialty][:id])
  end
  
  def specialty_params
    params.permit(:code, :name , :state)
  end
end
