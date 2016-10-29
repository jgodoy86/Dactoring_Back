class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|
      t.string :anato_code
      t.string :farmaceutic_form_code
      t.string :active_principle_code
      t.string :concentration_code
      t.string :atc_code
      t.string :rips_code
      t.string :control_code
      t.string :pos_code

      t.timestamps
    end
  end
end
