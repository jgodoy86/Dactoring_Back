class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.references :company, index: true
      # t.string :code
      t.string :name
      # t.string :company
      t.date   :start_date
      t.date   :end_date
      t.string :state

      t.timestamps
    end
  end
end
