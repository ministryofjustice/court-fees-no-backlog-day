json.array!(@form_types) do |form_type|
  json.extract! form_type, :id, :references, :number, :form_name
  json.url form_type_url(form_type, format: :json)
end
