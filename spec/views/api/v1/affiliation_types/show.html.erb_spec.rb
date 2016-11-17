require 'rails_helper'

RSpec.describe "affiliation_types/show", type: :view do
  before(:each) do
    @affiliation_type = assign(:affiliation_type, AffiliationType.create!(
      :code => "Code",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/MyText/)
  end
end
