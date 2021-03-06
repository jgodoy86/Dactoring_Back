class Api::V1::ContactsController < ApplicationController
  before_action :get_contact, except: [:index, :create]
  
  def index
    @contacts = Contact.all
  end

  def create
    contact = Contact.new(contact_params)
    
    if contact.save
      renderJson(:created, { notice: "Contacto creado exitosamente" })
    else
      renderJson(:unprocessable, { notice: "Contacto no creado" })
    end
  end

  def update
    @contact.update(contact_params)
    renderJson(:created, { notice: 'Contacto Actualizado' })
  end

  def destroy
    @contact.destroy
  end
  
  private
  
  def get_contact
    @contact = Contact.find_by(id: params[:contact][:id])
  end
  
  def contact_params
    params.permit(:message, :position, :phone, :cellphone, :email, :address)
  end
  
end