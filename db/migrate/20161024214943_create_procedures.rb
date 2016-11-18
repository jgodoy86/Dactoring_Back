class CreateProcedures < ActiveRecord::Migration[5.0]
  def change
    create_table :procedures do |t|
      t.references :company, index: true
      # t.string :code
      t.string :description
      t.string :procedural_type, index: true
      t.string :service_purpose
      t.string :procedural_time
      t.string :sex
      t.string :begin_day
      t.string :end_day
      t.string :require_dx
      t.string :informed_consent
      t.string :attention_level
      t.string :state

      t.timestamps
    end
  end
end
