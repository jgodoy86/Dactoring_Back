class Country < ApplicationRecord
  has_many :departments
  has_many :municipalities
  has_many :neighborhoods
end
