class CreateAtentionAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :atention_areas do |t|
      t.string :company_code
      t.string :branch_office_code
      t.string :pabillion_code
      t.string :code
      t.string :name
      t.string :type
      t.time  :start_hour
      t.time  :end_hour
      t.string :state

      t.timestamps
    end
  end
end
