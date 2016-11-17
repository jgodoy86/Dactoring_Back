class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.string  :company_code
      t.string  :master_company_code
      t.string  :code
      t.string  :name
      t.string  :day
      t.time    :start_hour
      t.time    :end_hour
      t.string  :petition_time
      t.integer :max_patients
      t.string  :medic_code
      t.string  :specialty_code
      t.string  :consultory_code
      t.string  :agenda_state

      t.timestamps
    end
  end
end
