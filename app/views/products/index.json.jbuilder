json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :category, :quantity, :price, :size, :image, :notes
  json.url product_url(product, format: :json)
end
