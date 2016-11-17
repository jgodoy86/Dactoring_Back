class Api::V1::SubGroupProductsController < ApplicationController
  before_action :get_sub_group_product, except: [:index, :create]

  def index
    @sub_group_products = SubGroupProduct.all
  end

  def create
    sub_group_product = SubGroupProduct.new(sub_group_product_params)

    if sub_group_product.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @sub_group_product.update(sub_group_product_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @sub_group_product.destroy
  end

  private

  def get_sub_group_product
    @sub_group_product = SubGroupProduct.find_by(id: params[:sub_group_product][:id])
  end

  def sub_group_product_params
    params.require(:sub_group_product).permit(:group_code , :code , :name)
  end
end
