class CreateUnityMeasures < ActiveRecord::Migration[5.0]
  def change
    create_table :unity_measures do |t|
      # t.string :code
      t.string :name
      t.references :unity_type, index: true

      t.timestamps
    end
  end
end
