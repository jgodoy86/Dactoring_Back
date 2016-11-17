require 'rails_helper'

RSpec.describe "supply_portfolio_details/new", type: :view do
  before(:each) do
    assign(:supply_portfolio_detail, SupplyPortfolioDetail.new(
      :company_code => "MyString",
      :supply_portfolio_code => "MyString",
      :supply_code => "MyString",
      :supply_value => 1.5
    ))
  end

  it "renders new supply_portfolio_detail form" do
    render

    assert_select "form[action=?][method=?]", supply_portfolio_details_path, "post" do

      assert_select "input#supply_portfolio_detail_company_code[name=?]", "supply_portfolio_detail[company_code]"

      assert_select "input#supply_portfolio_detail_supply_portfolio_code[name=?]", "supply_portfolio_detail[supply_portfolio_code]"

      assert_select "input#supply_portfolio_detail_supply_code[name=?]", "supply_portfolio_detail[supply_code]"

      assert_select "input#supply_portfolio_detail_supply_value[name=?]", "supply_portfolio_detail[supply_value]"
    end
  end
end
