json.array!(@fee_types) do |fee_type|
  json.extract! fee_type, :id, :title, :amount
  json.url fee_type_url(fee_type, format: :json)
end
