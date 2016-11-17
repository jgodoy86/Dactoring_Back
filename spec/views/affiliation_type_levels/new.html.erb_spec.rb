require 'rails_helper'

RSpec.describe "affiliation_type_levels/new", type: :view do
  before(:each) do
    assign(:affiliation_type_level, AffiliationTypeLevel.new(
      :affiliation_code => "MyString",
      :level => "MyString",
      :description => "MyText",
      :sgsss_code => "MyString"
    ))
  end

  it "renders new affiliation_type_level form" do
    render

    assert_select "form[action=?][method=?]", affiliation_type_levels_path, "post" do

      assert_select "input#affiliation_type_level_affiliation_code[name=?]", "affiliation_type_level[affiliation_code]"

      assert_select "input#affiliation_type_level_level[name=?]", "affiliation_type_level[level]"

      assert_select "textarea#affiliation_type_level_description[name=?]", "affiliation_type_level[description]"

      assert_select "input#affiliation_type_level_sgsss_code[name=?]", "affiliation_type_level[sgsss_code]"
    end
  end
end
