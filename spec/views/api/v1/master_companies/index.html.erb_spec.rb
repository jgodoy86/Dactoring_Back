require 'rails_helper'

RSpec.describe "master_companies/index", type: :view do
  before(:each) do
    assign(:master_companies, [
      MasterCompany.create!(
        :company_code => "Company Code",
        :code => "Code",
        :nit => "Nit",
        :verification_digit => "Verification Digit",
        :social_reason => "Social Reason",
        :commercial_name => "Commercial Name",
        :web_page => "Web Page",
        :contributor_type => "Contributor Type",
        :rips_code => "Rips Code",
        :address => "Address",
        :cellphone => "Cellphone",
        :phone => "Phone"
      ),
      MasterCompany.create!(
        :company_code => "Company Code",
        :code => "Code",
        :nit => "Nit",
        :verification_digit => "Verification Digit",
        :social_reason => "Social Reason",
        :commercial_name => "Commercial Name",
        :web_page => "Web Page",
        :contributor_type => "Contributor Type",
        :rips_code => "Rips Code",
        :address => "Address",
        :cellphone => "Cellphone",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of master_companies" do
    render
    assert_select "tr>td", :text => "Company Code".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Nit".to_s, :count => 2
    assert_select "tr>td", :text => "Verification Digit".to_s, :count => 2
    assert_select "tr>td", :text => "Social Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Commercial Name".to_s, :count => 2
    assert_select "tr>td", :text => "Web Page".to_s, :count => 2
    assert_select "tr>td", :text => "Contributor Type".to_s, :count => 2
    assert_select "tr>td", :text => "Rips Code".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
