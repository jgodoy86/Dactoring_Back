class CreateAttentionAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :attention_areas do |t|
      t.references :company, index: true
      t.references :branch_office, index: true
      t.references :pabillion, index: true
      # t.string :code
      t.string :name
      t.string :type
      t.time  :start_hour
      t.time  :end_hour
      t.string :state

      t.timestamps
    end
  end
end
