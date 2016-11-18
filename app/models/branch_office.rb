class BranchOffice < ApplicationRecord
  belongs_to :company

  has_many :pabillions
  has_many :attention_areas  
end
