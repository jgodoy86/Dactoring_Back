class CreateAffiliationTypeLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :affiliation_type_levels do |t|
      t.references :affiliation_type, index: true
      t.string :level
      t.text :description
      t.string :sgsss_code

      t.timestamps
    end
  end
end
