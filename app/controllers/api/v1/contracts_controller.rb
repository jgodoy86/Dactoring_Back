class Api::V1::ContractsController < ApplicationController
  before_action :get_contract, except: [:index, :create]
  
  def index
    @contracts = Contract.all
  end

  def create
    contract = Contract.new(contract_params)
    
    if contract.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @contract.update(contract_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @contract.destroy
  end
  
  private
  
  def get_contract
    @contract = Contract.find_by(id: params[:contract][:id])
  end
  
  def contract_params
    params.permit(:code, :name, :company, :start_date, :end_date, :state)
  end
end
