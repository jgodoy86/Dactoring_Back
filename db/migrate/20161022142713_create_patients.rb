class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :identification
      t.string :id_type
      t.string :last_name1
      t.string :last_name2
      t.string :first_name1
      t.string :first_name2
      t.string :special_attention
      t.string :country
      t.string :department
      t.string :municipality
      t.string :neighborhood
      t.string :email
      t.string :address
      t.string :work_company
      t.string :marital_status
      t.string :education_level_state
      t.string :birthday
      t.string :education_level
      t.string :occupation
      t.string :profession
      t.string :sex
      t.string :phone
      t.string :office_phone

      t.timestamps
    end
  end
end
