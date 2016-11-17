require 'rails_helper'

RSpec.describe "procedure_portfolios/edit", type: :view do
  before(:each) do
    @procedure_portfolio = assign(:procedure_portfolio, ProcedurePortfolio.create!(
      :company_code => "MyString",
      :code => "MyString",
      :procedure_code => "MyString",
      :procedure_cost => "MyString"
    ))
  end

  it "renders the edit procedure_portfolio form" do
    render

    assert_select "form[action=?][method=?]", procedure_portfolio_path(@procedure_portfolio), "post" do

      assert_select "input#procedure_portfolio_company_code[name=?]", "procedure_portfolio[company_code]"

      assert_select "input#procedure_portfolio_code[name=?]", "procedure_portfolio[code]"

      assert_select "input#procedure_portfolio_procedure_code[name=?]", "procedure_portfolio[procedure_code]"

      assert_select "input#procedure_portfolio_procedure_cost[name=?]", "procedure_portfolio[procedure_cost]"
    end
  end
end
