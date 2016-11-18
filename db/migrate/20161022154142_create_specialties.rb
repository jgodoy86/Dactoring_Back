class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      # t.string :code
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
