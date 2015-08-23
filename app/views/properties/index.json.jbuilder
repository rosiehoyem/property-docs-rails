json.array!(@properties) do |property|
  json.extract! property, :id, :address, :unit, :city, :state, :zip, :bedrooms, :bathrooms, :sqft, :storage, :parking, :included_utilities, :not_included_utilities, :appliances, :description
  json.url property_url(property, format: :json)
end
