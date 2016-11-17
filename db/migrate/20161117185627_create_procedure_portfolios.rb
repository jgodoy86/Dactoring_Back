class CreateProcedurePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :procedure_portfolios do |t|
      t.string :company_code
      t.string :code
      t.string :procedure_code
      t.float :procedure_cost

      t.timestamps
    end
  end
end
