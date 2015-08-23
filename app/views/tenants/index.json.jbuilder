json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :first_name, :last_name, :phone
  json.url tenant_url(tenant, format: :json)
end
