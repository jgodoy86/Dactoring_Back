class Contact < ApplicationRecord
  belongs_to :company
  belongs_to :master_company
end
