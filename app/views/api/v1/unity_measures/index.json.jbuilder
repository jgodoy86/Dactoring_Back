json.(@unity_measures) do |unity_measure|
  json.extract! unity_measure,  :code , :name , :code_unity_type
end
