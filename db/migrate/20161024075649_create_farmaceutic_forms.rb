class CreateFarmaceuticForms < ActiveRecord::Migration[5.0]
  def change
    create_table :farmaceutic_forms do |t|
      # t.string :code
      t.string :description
      t.string :application_code

      t.timestamps
    end
  end
end
