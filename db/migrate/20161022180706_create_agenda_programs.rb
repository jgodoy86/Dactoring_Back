class CreateAgendaPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :agenda_programs do |t|
      t.references :company, index: true
      t.references :master_company, index: true
      t.references :agenda, index: true
      t.references :medic, index: true
      t.references :specialty, index: true
      t.string :consultory_code
      t.datetime :date_time_patient
      t.datetime :date_time_appointment
      t.datetime :date_time_system
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
