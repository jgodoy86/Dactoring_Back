json.(@agendas) do |agenda|
	json.agenda_code agenda.agenda_code
	json.name agenda.name
	json.day agenda.day
	json.start_hour agenda.start_hour
	json.end_hour agenda.end_hour
	json.petition_time agenda.petition_time
	json.max_patients agenda.max_patients
	json.medic_code agenda.medic_code
	json.specialty_code agenda.specialty_code
	json.consultory_code agenda.consultory_code
	json.agenda_state agenda.agenda_state
end

