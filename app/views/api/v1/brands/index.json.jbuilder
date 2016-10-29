json.(@brands) do |brand|
  json.extract! brand, :code , :name
end
