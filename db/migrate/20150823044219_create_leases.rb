class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :term_in_months
      t.date :start_date
      t.date :end_date
      t.decimal :rent
      t.decimal :security_deposit, :precision => 12, :scale => 2
      t.decimal :storage_fee, :precision => 12, :scale => 2
      t.decimal :parking_fee, :precision => 12, :scale => 2
      t.decimal :total_monthly_rent, :precision => 12, :scale => 2
      t.string :pets
      t.decimal :pet_deposit, :precision => 12, :scale => 2
      t.decimal :first_month_rent_paid, :precision => 12, :scale => 2
      t.decimal :last_month_rent_paid, :precision => 12, :scale => 2
      t.references :tenant
      t.references :property

      t.timestamps null: false
    end
  end
end
