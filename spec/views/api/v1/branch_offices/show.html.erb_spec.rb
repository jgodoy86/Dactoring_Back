require 'rails_helper'

RSpec.describe "branch_offices/show", type: :view do
  before(:each) do
    @branch_office = assign(:branch_office, BranchOffice.create!(
      :company_code => "Company Code",
      :branch_office_code => "Branch Office Code",
      :branch_office_name => "Branch Office Name",
      :address => "Address",
      :cellphone => "Cellphone",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Code/)
    expect(rendered).to match(/Branch Office Code/)
    expect(rendered).to match(/Branch Office Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Cellphone/)
    expect(rendered).to match(/Phone/)
  end
end
