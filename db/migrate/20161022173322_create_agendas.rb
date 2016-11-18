class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.references  :company, index: true
      t.references  :master_company, index: true
      # t.string  :code
      t.string  :name
      t.string  :day
      t.time    :start_hour
      t.time    :end_hour
      t.string  :petition_time
      t.integer :max_patients
      t.string  :medic_code
      t.references  :specialty, index: true
      t.string  :consultory_code
      t.string  :agenda_state

      t.timestamps
    end
  end
end
