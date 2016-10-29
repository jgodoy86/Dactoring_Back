class CreateMedics < ActiveRecord::Migration[5.0]
  def change
    create_table :medics do |t|
      t.string :medic_code
      t.string :medic_id
      t.string :id_type
      t.string :first_name1
      t.string :first_name2
      t.string :last_name1
      t.string :last_name2
      t.text :medical_record
      t.string :phone
      t.string :cellphone
      t.string :email
      t.string :agend_management
      t.string :specialty_code

      t.timestamps
    end
  end
end
