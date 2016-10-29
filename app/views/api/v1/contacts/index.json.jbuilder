json.(@contacts) do |contact|
  json.id contact.id
  json.message contact.message
  json.position contact.position
  json.phone contact.phone
  json.cellphone contact.cellphone
  json.email contact.email
  json.address contact.address
end