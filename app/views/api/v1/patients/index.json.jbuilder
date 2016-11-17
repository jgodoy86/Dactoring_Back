json.(@patients) do |patient|
  	json.number_id patient.number_id
	json.document_type patient.document_type
	json.last_name1 patient.last_name1
	json.last_name2 patient.last_name2
	json.first_name1 patient.first_name1
	json.first_name2 patient.first_name2
	json.special_atention patient.special_atention
	json.country patient.country
	json.department patient.department
	json.municipality patient.municipality
	json.neighborhood patient.neighborhood
	json.email patient.email
	json.address patient.address
	json.work_company patient.work_company
	json.marital_status patient.marital_status
	json.education_level_state patient.education_level_state
	json.birthday patient.birthday
	json.education_level patient.education_level
	json.ocupation patient.ocupation
	json.profession patient.profession
	json.sex patient.sex
	json.phone patient.phone
	json.office_phone patient.office_phone
end
