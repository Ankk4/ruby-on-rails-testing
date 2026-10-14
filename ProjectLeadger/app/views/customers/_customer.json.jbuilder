json.extract! customer, :id, :name, :shortname, :business_id, :active, :has_contract, :created_at, :updated_at
json.url customer_url(customer, format: :json)
