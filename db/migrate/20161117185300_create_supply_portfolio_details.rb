class CreateSupplyPortfolioDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :supply_portfolio_details do |t|
      t.string :company_code
      t.string :supply_portfolio_code
      t.string :supply_code
      t.float  :supply_cost

      t.timestamps
    end
  end
end
