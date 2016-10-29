json.(@products) do |product|
  json.extract! product,  :code ,:name ,:group ,:sub_group,:brand ,:invima_reg ,:cum_code ,:anato_code ,:active_princio ,:form ,:concentration ,:pos ,:unity_buy ,:unity_buy_fraction ,:content ,:unity ,:app_unity ,:facturation_unity ,:storage_condition ,:reuse ,:iva_percentage ,:regulation
end
