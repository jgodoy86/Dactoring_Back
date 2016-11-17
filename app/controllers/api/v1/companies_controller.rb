class Api::V1::CompaniesController < ApplicationController
  before_action :get_company, except: [:index, :create]

  def index
    @companies = Company.all
  end

  def create
    company = Company.new(company_params)

    if company.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @company.update(company_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @company.destroy
  end

  private

  def get_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:code, :nit, :verification_digit,
     :social_reason, :commercial_name, :web_page, :contributor_type, 
     :address, :cellphone, :phone )
  end
end
