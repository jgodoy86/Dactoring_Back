class Api::V1::ProductsController < ApplicationController
  before_action :get_product, except: [:index, :create]

  def index
    @products = Product.all
  end

  def create
    product = Product.new(product_params)

    if product.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @product.update(product_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @product.destroy
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:company_code, :code ,:name ,:group ,:sub_group,:brand ,:invima_reg ,
    :cum_code ,:anato_code ,:active_principle_code ,:form_code ,:concentration_code ,:pos ,:unity_buy ,
    :unity_buy_fraction ,:content ,:unity ,:app_unity ,:facturation_unity ,:storage_condition ,
    :reuse ,:iva_percentage ,:regulation)
  end
end
