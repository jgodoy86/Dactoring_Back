json.(@companies) do |company|
  json.id company.id
  json.company_code company.company_code
  json.nit company.nit
  json.verification_digit company.verification_digit
  json.cellphone company.cellphone
  json.social_reason company.social_reason
  json.commercial_name company.commercial_name
  json.web_page company.web_page
  json.contributor_type company.contributor_type
  json.headquarters company.headquarters
  json.address company.address
  json.cellphone company.cellphone
  json.phone company.phone
end