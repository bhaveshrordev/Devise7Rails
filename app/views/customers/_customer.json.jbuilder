json.extract! customer, :id, :email, :name, :role, :created_at, :updated_at
json.url customer_url(customer, format: :json)
