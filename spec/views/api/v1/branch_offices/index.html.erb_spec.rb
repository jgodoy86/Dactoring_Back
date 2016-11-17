require 'rails_helper'

RSpec.describe "branch_offices/index", type: :view do
  before(:each) do
    assign(:branch_offices, [
      BranchOffice.create!(
        :company_code => "Company Code",
        :branch_office_code => "Branch Office Code",
        :branch_office_name => "Branch Office Name",
        :address => "Address",
        :cellphone => "Cellphone",
        :phone => "Phone"
      ),
      BranchOffice.create!(
        :company_code => "Company Code",
        :branch_office_code => "Branch Office Code",
        :branch_office_name => "Branch Office Name",
        :address => "Address",
        :cellphone => "Cellphone",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of branch_offices" do
    render
    assert_select "tr>td", :text => "Company Code".to_s, :count => 2
    assert_select "tr>td", :text => "Branch Office Code".to_s, :count => 2
    assert_select "tr>td", :text => "Branch Office Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
