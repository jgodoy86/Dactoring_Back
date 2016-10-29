json.(@rip_groups) do |rip_group|
  json.extract! rip_group, :code , :description
end
