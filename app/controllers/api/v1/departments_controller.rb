class Api::V1::DepartmentsController < ApplicationController
  before_action :get_department, except: [:index, :create]
  
  def index
    @departments = Department.all
  end

  def create
    department = Department.new(department_params)
    
    if department.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @department.update(department_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @department.destroy
  end
  
  private 
  
  def get_department
    @department = Department.find_by(id: params[:department][:id])
  end
  
  def department_params
    params.permit(:country_code, :code, :name )
  end
end
