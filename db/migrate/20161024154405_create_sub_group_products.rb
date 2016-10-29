class CreateSubGroupProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_group_products do |t|
      t.string :group_code
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
