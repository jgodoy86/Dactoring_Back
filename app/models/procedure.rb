class Procedure < ApplicationRecord
  belongs_to :company
  belongs_to :procedural_type

  has_many :procedure_portfolios
end
