class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :country_code
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
