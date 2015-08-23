require 'rails_helper'

RSpec.describe "tenants/index", type: :view do
  before(:each) do
    assign(:tenants, [
      Tenant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone"
      ),
      Tenant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of tenants" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
