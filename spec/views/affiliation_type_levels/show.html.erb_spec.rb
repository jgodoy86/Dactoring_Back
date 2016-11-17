require 'rails_helper'

RSpec.describe "affiliation_type_levels/show", type: :view do
  before(:each) do
    @affiliation_type_level = assign(:affiliation_type_level, AffiliationTypeLevel.create!(
      :affiliation_code => "Affiliation Code",
      :level => "Level",
      :description => "MyText",
      :sgsss_code => "Sgsss Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Affiliation Code/)
    expect(rendered).to match(/Level/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Sgsss Code/)
  end
end
