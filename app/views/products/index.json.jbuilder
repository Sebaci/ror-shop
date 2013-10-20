json.array!(@products) do |product|
  json.extract! product, :name, :descr, :price, :category_id
  json.url product_url(product, format: :json)
end
