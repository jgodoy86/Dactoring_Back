json.(@supplies) do |supply|
  json.extract! supply, :anato_code ,:farmaceutic_form_code ,:active_principle_code ,:concentration_code ,:atc_code ,:rips_code ,:control_code ,:pos_code
end
