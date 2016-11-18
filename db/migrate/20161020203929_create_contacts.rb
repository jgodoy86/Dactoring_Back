class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.references :company, index: true
      t.references :master_company, index:true
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
