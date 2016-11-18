class Municipality < ApplicationRecord
  belongs_to :country
  belongs_to :department

  has_many :neighborhoods
end
