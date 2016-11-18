class SubGroupProduct < ApplicationRecord
  belongs_to :group_product

  has_many :products
end
