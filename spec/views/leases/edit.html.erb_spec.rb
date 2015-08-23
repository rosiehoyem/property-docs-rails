require 'rails_helper'

RSpec.describe "leases/edit", type: :view do
  before(:each) do
    @lease = assign(:lease, Lease.create!(
      :term_in_months => "MyString",
      :rent => "9.99",
      :security_deposit => "9.99",
      :storage_fee => "9.99",
      :parking_fee => "9.99",
      :total_monthly_rent => "9.99",
      :pets => "MyString",
      :pet_deposit => "9.99",
      :first_month_rent_paid => "9.99",
      :last_month_rent_paid => "9.99"
    ))
  end

  it "renders the edit lease form" do
    render

    assert_select "form[action=?][method=?]", lease_path(@lease), "post" do

      assert_select "input#lease_term_in_months[name=?]", "lease[term_in_months]"

      assert_select "input#lease_rent[name=?]", "lease[rent]"

      assert_select "input#lease_security_deposit[name=?]", "lease[security_deposit]"

      assert_select "input#lease_storage_fee[name=?]", "lease[storage_fee]"

      assert_select "input#lease_parking_fee[name=?]", "lease[parking_fee]"

      assert_select "input#lease_total_monthly_rent[name=?]", "lease[total_monthly_rent]"

      assert_select "input#lease_pets[name=?]", "lease[pets]"

      assert_select "input#lease_pet_deposit[name=?]", "lease[pet_deposit]"

      assert_select "input#lease_first_month_rent_paid[name=?]", "lease[first_month_rent_paid]"

      assert_select "input#lease_last_month_rent_paid[name=?]", "lease[last_month_rent_paid]"
    end
  end
end
