require 'rails_helper'

RSpec.describe "affiliation_types/edit", type: :view do
  before(:each) do
    @affiliation_type = assign(:affiliation_type, AffiliationType.create!(
      :code => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit affiliation_type form" do
    render

    assert_select "form[action=?][method=?]", affiliation_type_path(@affiliation_type), "post" do

      assert_select "input#affiliation_type_code[name=?]", "affiliation_type[code]"

      assert_select "textarea#affiliation_type_description[name=?]", "affiliation_type[description]"
    end
  end
end
