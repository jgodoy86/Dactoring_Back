class CreateAtentionAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :atention_areas do |t|
      t.string :company_code
      t.string :pabillion_code
      t.string :area_code
      t.string :area_name
      t.string :atention_type
      t.string :start_hour
      t.string :end_hour
      t.string :state

      t.timestamps
    end
  end
end
