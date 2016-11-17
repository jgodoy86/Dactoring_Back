class Api::V1::BrandsController < ApplicationController
  before_action :get_brand, except: [:index, :create]

  def index
    @brands = Brand.all
  end

  def create
    brand = Brand.new(brand_params)

    if brand.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @brand.update(brand_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @brand.destroy
  end

  private

  def get_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:code, :name)
  end
end
