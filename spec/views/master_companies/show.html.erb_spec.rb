require 'rails_helper'

RSpec.describe "master_companies/show", type: :view do
  before(:each) do
    @master_company = assign(:master_company, MasterCompany.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Code/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Nit/)
    expect(rendered).to match(/Verification Digit/)
    expect(rendered).to match(/Social Reason/)
    expect(rendered).to match(/Commercial Name/)
    expect(rendered).to match(/Web Page/)
    expect(rendered).to match(/Contributor Type/)
    expect(rendered).to match(/Rips Code/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Cellphone/)
    expect(rendered).to match(/Phone/)
  end
end
