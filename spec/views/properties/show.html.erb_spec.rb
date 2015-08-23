require 'rails_helper'

RSpec.describe "properties/show", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Bedrooms/)
    expect(rendered).to match(/Bathrooms/)
    expect(rendered).to match(/Sqft/)
    expect(rendered).to match(/Storage/)
    expect(rendered).to match(/Parking/)
    expect(rendered).to match(/Included Utilities/)
    expect(rendered).to match(/Not Included Utilities/)
    expect(rendered).to match(/Appliances/)
    expect(rendered).to match(/MyText/)
  end
end
