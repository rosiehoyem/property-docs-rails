require 'rails_helper'

RSpec.describe "leases/index", type: :view do
  before(:each) do
    assign(:leases, [
      Lease.create!(
        :term_in_months => "Term In Months",
        :rent => "9.99",
        :security_deposit => "9.99",
        :storage_fee => "9.99",
        :parking_fee => "9.99",
        :total_monthly_rent => "9.99",
        :pets => "Pets",
        :pet_deposit => "9.99",
        :first_month_rent_paid => "9.99",
        :last_month_rent_paid => "9.99"
      ),
      Lease.create!(
        :term_in_months => "Term In Months",
        :rent => "9.99",
        :security_deposit => "9.99",
        :storage_fee => "9.99",
        :parking_fee => "9.99",
        :total_monthly_rent => "9.99",
        :pets => "Pets",
        :pet_deposit => "9.99",
        :first_month_rent_paid => "9.99",
        :last_month_rent_paid => "9.99"
      )
    ])
  end

  it "renders a list of leases" do
    render
    assert_select "tr>td", :text => "Term In Months".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Pets".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
