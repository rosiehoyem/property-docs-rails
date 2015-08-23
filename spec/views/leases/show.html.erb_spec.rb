require 'rails_helper'

RSpec.describe "leases/show", type: :view do
  before(:each) do
    @lease = assign(:lease, Lease.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Term In Months/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Pets/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
