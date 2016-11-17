class CreateProceduralTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :procedural_types do |t|
      t.string :code
      t.string :name
      t.string :rips_code

      t.timestamps
    end
  end
end
