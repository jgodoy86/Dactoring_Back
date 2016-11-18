class Department < ApplicationRecord
  belongs_to :country

  has_many :municipalities
  has_many :neighborhoods
end
