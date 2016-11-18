class GroupProduct < ApplicationRecord
  belongs_to :company

  has_many :sub_group_products
  has_many :products
end
