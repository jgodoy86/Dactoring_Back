class MasterCompany < ApplicationRecord
  belongs_to :company
  
  has_many :contacts
  has_many :agendas
  has_many :agenda_programs
end
