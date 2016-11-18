class CreateSubGroupProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_group_products do |t|
      t.references :company, index: true
      t.references :group_product, index: true
      # t.string :code
      t.string :name

      t.timestamps
    end
  end
end
