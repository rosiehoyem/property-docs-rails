require 'rails_helper'

RSpec.describe "properties/index", type: :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :address => "Address",
        :unit => "Unit",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :bedrooms => "Bedrooms",
        :bathrooms => "Bathrooms",
        :sqft => "Sqft",
        :storage => "Storage",
        :parking => "Parking",
        :included_utilities => "Included Utilities",
        :not_included_utilities => "Not Included Utilities",
        :appliances => "Appliances",
        :description => "MyText"
      ),
      Property.create!(
        :address => "Address",
        :unit => "Unit",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :bedrooms => "Bedrooms",
        :bathrooms => "Bathrooms",
        :sqft => "Sqft",
        :storage => "Storage",
        :parking => "Parking",
        :included_utilities => "Included Utilities",
        :not_included_utilities => "Not Included Utilities",
        :appliances => "Appliances",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Bedrooms".to_s, :count => 2
    assert_select "tr>td", :text => "Bathrooms".to_s, :count => 2
    assert_select "tr>td", :text => "Sqft".to_s, :count => 2
    assert_select "tr>td", :text => "Storage".to_s, :count => 2
    assert_select "tr>td", :text => "Parking".to_s, :count => 2
    assert_select "tr>td", :text => "Included Utilities".to_s, :count => 2
    assert_select "tr>td", :text => "Not Included Utilities".to_s, :count => 2
    assert_select "tr>td", :text => "Appliances".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
