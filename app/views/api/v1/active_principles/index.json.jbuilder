json.(@active_principles) do |active_principle|
  json.extract! active_principle, :code, :short_principle, :large_principle, :name
end
