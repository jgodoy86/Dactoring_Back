class Pabillion < ApplicationRecord
  belongs_to :company
  belongs_to :branch_office

  has_many :attention_areas
end
