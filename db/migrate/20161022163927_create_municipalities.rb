class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.references :country, index: true
      t.references :department, index: true
      # t.string :code
      t.string :name

      t.timestamps
    end
  end
end
