require 'rails_helper'

RSpec.describe "supply_portfolio_details/edit", type: :view do
  before(:each) do
    @supply_portfolio_detail = assign(:supply_portfolio_detail, SupplyPortfolioDetail.create!(
      :company_code => "MyString",
      :supply_portfolio_code => "MyString",
      :supply_code => "MyString",
      :supply_value => 1.5
    ))
  end

  it "renders the edit supply_portfolio_detail form" do
    render

    assert_select "form[action=?][method=?]", supply_portfolio_detail_path(@supply_portfolio_detail), "post" do

      assert_select "input#supply_portfolio_detail_company_code[name=?]", "supply_portfolio_detail[company_code]"

      assert_select "input#supply_portfolio_detail_supply_portfolio_code[name=?]", "supply_portfolio_detail[supply_portfolio_code]"

      assert_select "input#supply_portfolio_detail_supply_code[name=?]", "supply_portfolio_detail[supply_code]"

      assert_select "input#supply_portfolio_detail_supply_value[name=?]", "supply_portfolio_detail[supply_value]"
    end
  end
end
