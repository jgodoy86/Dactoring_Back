class Api::V1::StoragesController < ApplicationController
  before_action :get_storage, except: [:index, :create]
  
  def index
    @storages = Storage.all
  end

  def create
    storage = Storage.new(storage_params)
    
    if storage.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @storage.update(storage_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @storage.destroy
  end
  
  private
  
  def get_storage
    @storage = Storage.find_by(id: params[:storage][:id])
  end
  
  def storage_params
    params.permit(:code, :name , :state)
  end
end
