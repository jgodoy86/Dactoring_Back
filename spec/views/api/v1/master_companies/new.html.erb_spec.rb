require 'rails_helper'

RSpec.describe "master_companies/new", type: :view do
  before(:each) do
    assign(:master_company, MasterCompany.new(
      :company_code => "MyString",
      :code => "MyString",
      :nit => "MyString",
      :verification_digit => "MyString",
      :social_reason => "MyString",
      :commercial_name => "MyString",
      :web_page => "MyString",
      :contributor_type => "MyString",
      :rips_code => "MyString",
      :address => "MyString",
      :cellphone => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new master_company form" do
    render

    assert_select "form[action=?][method=?]", master_companies_path, "post" do

      assert_select "input#master_company_company_code[name=?]", "master_company[company_code]"

      assert_select "input#master_company_code[name=?]", "master_company[code]"

      assert_select "input#master_company_nit[name=?]", "master_company[nit]"

      assert_select "input#master_company_verification_digit[name=?]", "master_company[verification_digit]"

      assert_select "input#master_company_social_reason[name=?]", "master_company[social_reason]"

      assert_select "input#master_company_commercial_name[name=?]", "master_company[commercial_name]"

      assert_select "input#master_company_web_page[name=?]", "master_company[web_page]"

      assert_select "input#master_company_contributor_type[name=?]", "master_company[contributor_type]"

      assert_select "input#master_company_rips_code[name=?]", "master_company[rips_code]"

      assert_select "input#master_company_address[name=?]", "master_company[address]"

      assert_select "input#master_company_cellphone[name=?]", "master_company[cellphone]"

      assert_select "input#master_company_phone[name=?]", "master_company[phone]"
    end
  end
end
