class CreateAnatofarmacologics < ActiveRecord::Migration[5.0]
  def change
    create_table :anatofarmacologics do |t|
      t.string :code
      t.string :code_lvl_1
      t.string :name_code_1
      t.string :code_lvl_2
      t.string :name_code_2
      t.string :code_lvl_3
      t.string :name_code_3

      t.timestamps
    end
  end
end
