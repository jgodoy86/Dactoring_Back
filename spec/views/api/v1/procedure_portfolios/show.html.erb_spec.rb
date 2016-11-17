require 'rails_helper'

RSpec.describe "procedure_portfolios/show", type: :view do
  before(:each) do
    @procedure_portfolio = assign(:procedure_portfolio, ProcedurePortfolio.create!(
      :company_code => "Company Code",
      :code => "Code",
      :procedure_code => "Procedure Code",
      :procedure_cost => "Procedure Cost"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Code/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Procedure Code/)
    expect(rendered).to match(/Procedure Cost/)
  end
end
