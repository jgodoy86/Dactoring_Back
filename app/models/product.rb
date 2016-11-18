class Product < ApplicationRecord
  belongs_to :company
  belongs_to :group_product
  belongs_to :sub_group_product
  belongs_to :brand
  belongs_to :anatofarmacologic
  belongs_to :active_principle
  belongs_to :farmaceutic_form
  belongs_to :concentration
end
