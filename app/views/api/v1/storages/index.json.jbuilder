json.(@storages) do |storage|
  json.extract! storage, :code , :name
end
