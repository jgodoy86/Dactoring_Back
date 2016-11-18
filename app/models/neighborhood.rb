class Neighborhood < ApplicationRecord
  belongs_to :country
  belongs_to :department
  belongs_to :municipality
end
