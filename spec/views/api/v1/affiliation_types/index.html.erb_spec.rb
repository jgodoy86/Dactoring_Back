require 'rails_helper'

RSpec.describe "affiliation_types/index", type: :view do
  before(:each) do
    assign(:affiliation_types, [
      AffiliationType.create!(
        :code => "Code",
        :description => "MyText"
      ),
      AffiliationType.create!(
        :code => "Code",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of affiliation_types" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
