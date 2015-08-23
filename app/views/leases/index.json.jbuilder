json.array!(@leases) do |lease|
  json.extract! lease, :id, :term_in_months, :start_date, :end_date, :rent, :security_deposit, :storage_fee, :parking_fee, :total_monthly_rent, :pets, :pet_deposit, :first_month_rent_paid, :last_month_rent_paid
  json.url lease_url(lease, format: :json)
end
