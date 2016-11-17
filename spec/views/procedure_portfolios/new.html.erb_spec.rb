require 'rails_helper'

RSpec.describe "procedure_portfolios/new", type: :view do
  before(:each) do
    assign(:procedure_portfolio, ProcedurePortfolio.new(
      :company_code => "MyString",
      :code => "MyString",
      :procedure_code => "MyString",
      :procedure_cost => "MyString"
    ))
  end

  it "renders new procedure_portfolio form" do
    render

    assert_select "form[action=?][method=?]", procedure_portfolios_path, "post" do

      assert_select "input#procedure_portfolio_company_code[name=?]", "procedure_portfolio[company_code]"

      assert_select "input#procedure_portfolio_code[name=?]", "procedure_portfolio[code]"

      assert_select "input#procedure_portfolio_procedure_code[name=?]", "procedure_portfolio[procedure_code]"

      assert_select "input#procedure_portfolio_procedure_cost[name=?]", "procedure_portfolio[procedure_cost]"
    end
  end
end
