require 'rails_helper'

RSpec.describe "affiliation_type_levels/index", type: :view do
  before(:each) do
    assign(:affiliation_type_levels, [
      AffiliationTypeLevel.create!(
        :affiliation_code => "Affiliation Code",
        :level => "Level",
        :description => "MyText",
        :sgsss_code => "Sgsss Code"
      ),
      AffiliationTypeLevel.create!(
        :affiliation_code => "Affiliation Code",
        :level => "Level",
        :description => "MyText",
        :sgsss_code => "Sgsss Code"
      )
    ])
  end

  it "renders a list of affiliation_type_levels" do
    render
    assert_select "tr>td", :text => "Affiliation Code".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Sgsss Code".to_s, :count => 2
  end
end
