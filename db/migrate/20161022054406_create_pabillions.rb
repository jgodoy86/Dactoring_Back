class CreatePabillions < ActiveRecord::Migration[5.0]
  def change
    create_table :pabillions do |t|
      t.string :company_code
      t.string :code
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
