class CreateAgendaPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :agenda_programs do |t|
      t.string :agenda_code
      t.string :medic_code
      t.string :specialty_code
      t.string :consultory_code
      t.string :date_time_patient
      t.string :date_time_appointment
      t.string :date_time_system
      t.string :patient_id
      t.string :patient_type_id
      t.string :patient_affiliation_contract
      t.string :agend_process
      t.string :appointment_state
      t.string :petition_time

      t.timestamps
    end
  end
end
