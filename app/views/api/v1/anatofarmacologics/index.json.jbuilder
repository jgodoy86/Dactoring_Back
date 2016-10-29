json.(@anatofarmacologics) do |anatofarmacologic|
  json.extract! anatofarmacologic, :code, :code_lvl_1, :name_code_1, :code_lvl_2, :name_code_2, :code_lvl_3, :name_code_3
  
end
