class Agenda < ApplicationRecord
  belongs_to :company
  belongs_to :master_company
  belongs_to :specialty

  has_many :agenda_programs
end
