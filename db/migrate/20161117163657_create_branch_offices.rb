class CreateBranchOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :branch_offices do |t|
      t.string :company_code
      t.string :code
      t.string :name
      t.string :address
      t.string :cellphone
      t.string :phone

      t.timestamps
    end
  end
end