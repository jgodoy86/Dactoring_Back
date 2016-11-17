class CreateAffiliationTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :affiliation_types do |t|
      t.string :code
      t.text   :description

      t.timestamps
    end
  end
end
