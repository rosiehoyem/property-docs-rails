require 'rails_helper'

RSpec.describe "tenants/new", type: :view do
  before(:each) do
    assign(:tenant, Tenant.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new tenant form" do
    render

    assert_select "form[action=?][method=?]", tenants_path, "post" do

      assert_select "input#tenant_first_name[name=?]", "tenant[first_name]"

      assert_select "input#tenant_last_name[name=?]", "tenant[last_name]"

      assert_select "input#tenant_phone[name=?]", "tenant[phone]"
    end
  end
end
