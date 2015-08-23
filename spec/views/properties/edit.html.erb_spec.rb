require 'rails_helper'

RSpec.describe "properties/edit", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :address => "MyString",
      :unit => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :bedrooms => "MyString",
      :bathrooms => "MyString",
      :sqft => "MyString",
      :storage => "MyString",
      :parking => "MyString",
      :included_utilities => "MyString",
      :not_included_utilities => "MyString",
      :appliances => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "input#property_address[name=?]", "property[address]"

      assert_select "input#property_unit[name=?]", "property[unit]"

      assert_select "input#property_city[name=?]", "property[city]"

      assert_select "input#property_state[name=?]", "property[state]"

      assert_select "input#property_zip[name=?]", "property[zip]"

      assert_select "input#property_bedrooms[name=?]", "property[bedrooms]"

      assert_select "input#property_bathrooms[name=?]", "property[bathrooms]"

      assert_select "input#property_sqft[name=?]", "property[sqft]"

      assert_select "input#property_storage[name=?]", "property[storage]"

      assert_select "input#property_parking[name=?]", "property[parking]"

      assert_select "input#property_included_utilities[name=?]", "property[included_utilities]"

      assert_select "input#property_not_included_utilities[name=?]", "property[not_included_utilities]"

      assert_select "input#property_appliances[name=?]", "property[appliances]"

      assert_select "textarea#property_description[name=?]", "property[description]"
    end
  end
end
