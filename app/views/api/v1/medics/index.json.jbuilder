json.(@medics) do |medic|
 json.id medic.id  
 json.medic_code medic.medic_code  
 json.medic_id medic.medic_id  
 json.id_type medic.id_type  
 json.first_name1 medic.first_name1  
 json.first_name2 medic.first_name2  
 json.last_name1 medic.last_name1  
 json.last_name2 medic.last_name2  
 json.medical_record medic.medical_record  
 json.phone medic.phone  
 json.cellphone medic.cellphone  
 json.email medic.email  
 json.agend_management medic.agend_management  
 json.specialty_code medic.specialty_code 
end
