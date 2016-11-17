require 'rails_helper'

RSpec.describe "procedure_portfolios/index", type: :view do
  before(:each) do
    assign(:procedure_portfolios, [
      ProcedurePortfolio.create!(
        :company_code => "Company Code",
        :code => "Code",
        :procedure_code => "Procedure Code",
        :procedure_cost => "Procedure Cost"
      ),
      ProcedurePortfolio.create!(
        :company_code => "Company Code",
        :code => "Code",
        :procedure_code => "Procedure Code",
        :procedure_cost => "Procedure Cost"
      )
    ])
  end

  it "renders a list of procedure_portfolios" do
    render
    assert_select "tr>td", :text => "Company Code".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Procedure Code".to_s, :count => 2
    assert_select "tr>td", :text => "Procedure Cost".to_s, :count => 2
  end
end
