class CreateSupplyPortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :supply_portfolios do |t|
      t.references :company, index: true
      # t.string :code
      t.string :state

      t.timestamps
    end
  end
end
