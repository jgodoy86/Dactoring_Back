class Medic < ApplicationRecord
  belongs_to :specialty

  has_many :agenda_programs
end
