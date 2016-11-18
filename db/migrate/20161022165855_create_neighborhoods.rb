class CreateNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    create_table :neighborhoods do |t|
      t.references :country, index: true
      t.references :department, index: true
      t.references :municipality, index: true
      # t.string :code
      t.string :name
      t.string :zone

      t.timestamps
    end
  end
end
