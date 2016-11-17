require 'rails_helper'

RSpec.describe "supply_portfolios/index", type: :view do
  before(:each) do
    assign(:supply_portfolios, [
      SupplyPortfolio.create!(
        :company_code => "Company Code",
        :code => "Code",
        :state => "State"
      ),
      SupplyPortfolio.create!(
        :company_code => "Company Code",
        :code => "Code",
        :state => "State"
      )
    ])
  end

  it "renders a list of supply_portfolios" do
    render
    assert_select "tr>td", :text => "Company Code".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
