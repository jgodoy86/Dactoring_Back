class CreateGroupProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :group_products do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
