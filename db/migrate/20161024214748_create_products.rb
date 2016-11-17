class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :company_code
      t.string :code
      t.string :name
      t.string :group
      t.string :sub_group
      t.string :brand
      t.string :invima_reg
      t.string :cum_code
      t.string :anato_code
      t.string :active_principle_code
      t.string :form_code
      t.string :concentration_code
      t.string :pos
      t.string :unity_buy
      t.string :unity_buy_fraction
      t.string :content
      t.string :unity
      t.string :app_unity
      t.string :facturation_unity
      t.string :storage_condition
      t.string :reuse
      t.string :iva_percentage
      t.string :regulation

      t.timestamps
    end
  end
end
