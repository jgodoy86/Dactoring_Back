require 'rails_helper'

RSpec.describe "supply_portfolios/edit", type: :view do
  before(:each) do
    @supply_portfolio = assign(:supply_portfolio, SupplyPortfolio.create!(
      :company_code => "MyString",
      :code => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit supply_portfolio form" do
    render

    assert_select "form[action=?][method=?]", supply_portfolio_path(@supply_portfolio), "post" do

      assert_select "input#supply_portfolio_company_code[name=?]", "supply_portfolio[company_code]"

      assert_select "input#supply_portfolio_code[name=?]", "supply_portfolio[code]"

      assert_select "input#supply_portfolio_state[name=?]", "supply_portfolio[state]"
    end
  end
end
