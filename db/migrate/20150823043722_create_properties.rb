class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :unit
      t.string :city
      t.string :state
      t.string :zip
      t.string :bedrooms
      t.string :bathrooms
      t.string :sqft
      t.string :storage
      t.string :parking
      t.string :included_utilities
      t.string :not_included_utilities
      t.string :appliances
      t.text :description

      t.timestamps null: false
    end
  end
end
