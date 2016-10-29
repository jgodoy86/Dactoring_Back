class CreateProcedures < ActiveRecord::Migration[5.0]
  def change
    create_table :procedures do |t|
      t.string :code
      t.string :description
      t.string :procedural_type
      t.string :service_end
      t.string :procedural_time
      t.string :sex
      t.string :begin_day
      t.string :end_day
      t.string :require_dx
      t.string :inform_consentment
      t.string :atention_level
      t.string :state

      t.timestamps
    end
  end
end
