class CreateUnityMeasures < ActiveRecord::Migration[5.0]
  def change
    create_table :unity_measures do |t|
      t.string :code
      t.string :name
      t.string :code_unity_type

      t.timestamps
    end
  end
end
