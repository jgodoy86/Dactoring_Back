class Company < ApplicationRecord
  has_many :contacts
  has_many :contracts
  has_many :pabillions
  has_many :attention_areas
  has_many :agendas
  has_many :agenda_programs
  has_many :group_products
  has_many :sub_group_products
  has_many :products
  has_many :procedures
  has_many :branch_offices
  has_many :master_companies #has one?
  has_many :supply_portfolios
  has_many :supply_portfolio_details
  has_many :procedure_portfolios
end
