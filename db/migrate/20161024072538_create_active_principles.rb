class CreateActivePrinciples < ActiveRecord::Migration[5.0]
  def change
    create_table :active_principles do |t|
      t.string :code
      t.string :short_principle
      t.string :large_principle
      t.string :name

      t.timestamps
    end
  end
end
