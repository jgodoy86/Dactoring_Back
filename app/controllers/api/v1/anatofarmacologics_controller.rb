class Api::V1::AnatofarmacologicsController < ApplicationController
  before_action :get_anatofarmacologic, except: [:index, :create]

  def index
    @anatofarmacologics = Anatofarmacologic.all
  end

  def create
    anatofarmacologic = Anatofarmacologic.new(anatofarmacologic_params)

    if anatofarmacologic.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @anatofarmacologic.update(anatofarmacologic_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @anatofarmacologic.destroy
  end

  private
  
  def get_anatofarmacologic
    @anatofarmacologic = Anatofarmacologic.find_by(id: params[:anatofarmacologic][:id])
  end

  def anatofarmacologic_params
    params.require(:anatofarmacologic).permit(:code, :code_lvl_1, :name_code_1, :code_lvl_2, :name_code_2, :code_lvl_3, :name_code_3)
  end
end
