class Concentration < ApplicationRecord
  has_many :supplies
  has_many :products
end
