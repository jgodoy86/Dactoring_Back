class CreateProcedurePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :procedure_portfolios do |t|
      t.references :company, index: true
      # t.string :code
      t.references :procedure, index: true
      t.float :procedure_cost

      t.timestamps
    end
  end
end
