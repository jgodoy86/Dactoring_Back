json.(@group_products) do |group_product|
  json.extract! group_product, :code ,:description
end
