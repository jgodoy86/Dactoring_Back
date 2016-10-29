json.(@pabillions) do |pabillion|
	json.extract! pabillion, :id, :company_code, :code, :name, :state
end
