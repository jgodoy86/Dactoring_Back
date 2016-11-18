class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :company, index: true
      # t.string :code
      t.string :name
      t.string :group_product, index: true
      t.string :sub_group_product, index: true
      t.string :brand, index: true
      t.string :invima_reg
      t.string :cum_code
      t.string :anatofarmacologic, index: true
      t.string :active_principle, index: true
      t.string :farmaceutic_form, index: true
      t.string :concentration, index: true
      t.string :pos
      t.string :unity_buy
      t.string :unity_buy_fraction
      t.string :content
      t.string :unity
      t.string :app_unity
      t.string :facturation_unity
      t.string :storage_condition
      t.string :reuse
      t.float :iva_percentage
      t.string :regulation

      t.timestamps
    end
  end
end
