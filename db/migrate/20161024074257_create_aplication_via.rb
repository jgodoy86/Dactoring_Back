class CreateAplicationVia < ActiveRecord::Migration[5.0]
  def change
    create_table :aplication_via do |t|
      t.string :code
      t.text :description
      t.string :sex

      t.timestamps
    end
  end
end
