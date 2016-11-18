class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|
      t.references :anatofarmacologic, index: true
      t.references :farmaceutic_form, index: true
      t.references :active_principle, index: true
      t.references :concentration, index: true
      t.string :atc_code
      t.string :rips_code
      t.string :control_code
      t.string :pos_code

      t.timestamps
    end
  end
end
