class CreatePabillions < ActiveRecord::Migration[5.0]
  def change
    create_table :pabillions do |t|
      t.references :company, index: true
      t.references :branch_office, index: true
      # t.string :code
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
