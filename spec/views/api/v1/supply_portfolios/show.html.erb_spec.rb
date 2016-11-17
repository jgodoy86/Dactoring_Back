require 'rails_helper'

RSpec.describe "supply_portfolios/show", type: :view do
  before(:each) do
    @supply_portfolio = assign(:supply_portfolio, SupplyPortfolio.create!(
      :company_code => "Company Code",
      :code => "Code",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Code/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/State/)
  end
end
