json.extract! master_company, :id, :company_code, :code, :nit, :verification_digit, :social_reason, :commercial_name, :web_page, :contributor_type, :rips_code, :address, :cellphone, :phone, :created_at, :updated_at
json.url master_company_url(master_company, format: :json)