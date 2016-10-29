class CreateNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    create_table :neighborhoods do |t|
      t.string :country_code
      t.string :department_code
      t.string :municipality_code
      t.string :code
      t.string :name
      t.string :zone

      t.timestamps
    end
  end
end
