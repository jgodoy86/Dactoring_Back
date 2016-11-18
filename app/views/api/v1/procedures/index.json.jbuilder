json.(@procedures) do |procedure|
  json.extract! procedure,  :code, :description, :procedural_type, :service_end, :procedural_time, :sex, :begin_day, :end_day, :require_dx, :inform_consentment, :attention_level, :state
end

