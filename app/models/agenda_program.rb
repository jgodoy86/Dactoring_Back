class AgendaProgram < ApplicationRecord
  belongs_to :company
  belongs_to :master_company
  belongs_to :agenda
  belongs_to :medic
  belongs_to :specialty
end
