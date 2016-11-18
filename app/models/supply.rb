class Supply < ApplicationRecord
  belongs_to :anatofarmacologic
  belongs_to :farmaceutic_form
  belongs_to :active_principle
  belongs_to :concentration

  has_many :supply_portfolio_details
end
