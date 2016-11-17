class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.string :agenda_code
      t.string :name
      t.string :day
      t.string :start_hour
      t.string :end_hour
      t.string :petition_time
      t.string :max_patients
      t.string :medic_code
      t.string :specialty_code
      t.string :consultory_code
      t.string :agenda_state

      t.timestamps
    end
  end
end
