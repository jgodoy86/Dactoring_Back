class CreateMasterCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :master_companies do |t|
      t.references :company, index: true
      # t.string :code
      t.string :nit
      t.string :verification_digit
      t.string :social_reason
      t.string :commercial_name
      t.string :web_page
      t.string :contributor_type
      t.string :rips_code
      t.string :address
      t.string :cellphone
      t.string :phone

      t.timestamps
    end
  end
end
