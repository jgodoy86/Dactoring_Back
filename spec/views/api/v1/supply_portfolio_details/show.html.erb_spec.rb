require 'rails_helper'

RSpec.describe "supply_portfolio_details/show", type: :view do
  before(:each) do
    @supply_portfolio_detail = assign(:supply_portfolio_detail, SupplyPortfolioDetail.create!(
      :company_code => "Company Code",
      :supply_portfolio_code => "Supply Portfolio Code",
      :supply_code => "Supply Code",
      :supply_value => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Code/)
    expect(rendered).to match(/Supply Portfolio Code/)
    expect(rendered).to match(/Supply Code/)
    expect(rendered).to match(/2.5/)
  end
end
