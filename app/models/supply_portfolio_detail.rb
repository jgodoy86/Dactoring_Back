class SupplyPortfolioDetail < ApplicationRecord
  belongs_to :company
  belongs_to :supply_portfolio
  belongs_to :supply
end
