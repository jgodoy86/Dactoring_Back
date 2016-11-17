require 'rails_helper'

RSpec.describe "affiliation_types/new", type: :view do
  before(:each) do
    assign(:affiliation_type, AffiliationType.new(
      :code => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new affiliation_type form" do
    render

    assert_select "form[action=?][method=?]", affiliation_types_path, "post" do

      assert_select "input#affiliation_type_code[name=?]", "affiliation_type[code]"

      assert_select "textarea#affiliation_type_description[name=?]", "affiliation_type[description]"
    end
  end
end
