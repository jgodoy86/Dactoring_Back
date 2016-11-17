class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :company_code
      t.string :master_company_code
      t.text   :message
      t.string :position
      t.string :phone
      t.string :cellphone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
