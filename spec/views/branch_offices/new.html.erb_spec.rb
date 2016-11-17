require 'rails_helper'

RSpec.describe "branch_offices/new", type: :view do
  before(:each) do
    assign(:branch_office, BranchOffice.new(
      :company_code => "MyString",
      :branch_office_code => "MyString",
      :branch_office_name => "MyString",
      :address => "MyString",
      :cellphone => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new branch_office form" do
    render

    assert_select "form[action=?][method=?]", branch_offices_path, "post" do

      assert_select "input#branch_office_company_code[name=?]", "branch_office[company_code]"

      assert_select "input#branch_office_branch_office_code[name=?]", "branch_office[branch_office_code]"

      assert_select "input#branch_office_branch_office_name[name=?]", "branch_office[branch_office_name]"

      assert_select "input#branch_office_address[name=?]", "branch_office[address]"

      assert_select "input#branch_office_cellphone[name=?]", "branch_office[cellphone]"

      assert_select "input#branch_office_phone[name=?]", "branch_office[phone]"
    end
  end
end
