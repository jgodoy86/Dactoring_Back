class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.string :country_code
      t.string :department_code
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
