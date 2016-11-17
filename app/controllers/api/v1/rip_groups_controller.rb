class Api::V1::RipGroupsController < ApplicationController
  before_action :get_rip_group, except: [:index, :create]

  def index
    @rip_groups = RipGroup.all
  end

  def create
    rip_group = RipGroup.new(rip_group_params)

    if rip_group.save
      renderJson(:created, { notice: "Contrato creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contrato no creado" })
    end
  end

  def update
    @rip_group.update(rip_group_params)
    renderJson(:created, { notice: 'Contrato Actualizado' })
  end

  def destroy
    @rip_group.destroy
  end

  private

  def get_rip_group
    @rip_group = RipGroup.find(params[:id])
  end

  def rip_group_params
    params.require(:rip_group).permit(:code ,:description)
  end
end
