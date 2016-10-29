json.(@sub_group_products) do |sub_group_product|
  json.extract! sub_group_product, :group_code , :code , :name
end
