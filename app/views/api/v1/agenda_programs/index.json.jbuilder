json.(@agenda_programs) do |agenda_program|
	json.agenda_code agenda_program.agenda_code
	json.medic_code agenda_program.medic_code
	json.specialty_code agenda_program.specialty_code
	json.consultory_code agenda_program.consultory_code
	json.date_time_patient agenda_program.date_time_patient
	json.date_time_appointment agenda_program.date_time_appointment
	json.date_time_system agenda_program.date_time_system
	json.patient_id agenda_program.patient_id
	json.patient_type_id agenda_program.patient_type_id
	json.patient_affiliation_contract agenda_program.patient_affiliation_contract
	json.agend_process agenda_program.agend_process
	json.appointment_state agenda_program.appointment_state
	json.petition_time agenda_program.petition_time
end
