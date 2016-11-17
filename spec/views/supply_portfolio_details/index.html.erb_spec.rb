require 'rails_helper'

RSpec.describe "supply_portfolio_details/index", type: :view do
  before(:each) do
    assign(:supply_portfolio_details, [
      SupplyPortfolioDetail.create!(
        :company_code => "Company Code",
        :supply_portfolio_code => "Supply Portfolio Code",
        :supply_code => "Supply Code",
        :supply_value => 2.5
      ),
      SupplyPortfolioDetail.create!(
        :company_code => "Company Code",
        :supply_portfolio_code => "Supply Portfolio Code",
        :supply_code => "Supply Code",
        :supply_value => 2.5
      )
    ])
  end

  it "renders a list of supply_portfolio_details" do
    render
    assert_select "tr>td", :text => "Company Code".to_s, :count => 2
    assert_select "tr>td", :text => "Supply Portfolio Code".to_s, :count => 2
    assert_select "tr>td", :text => "Supply Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
