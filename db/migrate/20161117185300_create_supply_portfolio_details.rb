class CreateSupplyPortfolioDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :supply_portfolio_details do |t|
      t.references :company, index: true
      t.references :supply_portfolio, index: true
      t.references :supply, index: true
      t.float  :supply_cost

      t.timestamps
    end
  end
end
