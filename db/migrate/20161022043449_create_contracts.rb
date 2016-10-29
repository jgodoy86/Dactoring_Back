class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :code
      t.string :name
      t.string :company
      t.string :start_date
      t.string :end_date
      t.string :state

      t.timestamps
    end
  end
end
