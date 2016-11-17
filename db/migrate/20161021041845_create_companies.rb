class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :code
      t.string :nit
      t.integer :verification_digit
      t.string :social_reason
      t.string :commercial_name
      t.string :web_page
      t.string :contributor_types
      t.string :address
      t.string :cellphone
      t.string :phone

      t.timestamps
    end
  end
end
