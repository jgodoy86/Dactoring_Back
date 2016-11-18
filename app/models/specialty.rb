class Specialty < ApplicationRecord
  has_many :medics
  has_many :agendas

  has_many :agenda_programs
end
