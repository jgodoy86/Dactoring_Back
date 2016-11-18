class SupplyPortfolio < ApplicationRecord
  belongs_to :company

  has_many :supply_portfolio_details #has one?
end
