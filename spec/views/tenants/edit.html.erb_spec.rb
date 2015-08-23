require 'rails_helper'

RSpec.describe "tenants/edit", type: :view do
  before(:each) do
    @tenant = assign(:tenant, Tenant.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit tenant form" do
    render

    assert_select "form[action=?][method=?]", tenant_path(@tenant), "post" do

      assert_select "input#tenant_first_name[name=?]", "tenant[first_name]"

      assert_select "input#tenant_last_name[name=?]", "tenant[last_name]"

      assert_select "input#tenant_phone[name=?]", "tenant[phone]"
    end
  end
end
