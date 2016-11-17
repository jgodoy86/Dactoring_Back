class Api::V1::GroupProductsController < ApplicationController
  before_action :get_group_product, except: [:index, :create]

  def index
    @group_products = GroupProduct.all
  end

  def create
    group_product = GroupProduct.new(group_product_params)

    if group_product.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @group_product.update(group_product_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @group_product.destroy
  end

  private

  def get_group_product
    @group_product = GroupProduct.find_by(id: params[:group_product][:id])
  end

  def group_product_params
    params.require(:group_product).permit(:code ,:description)
  end
end
