# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161117185945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_principles", force: :cascade do |t|
    t.string   "short_principle"
    t.string   "large_principle"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "affiliation_type_levels", force: :cascade do |t|
    t.integer  "affiliation_type_id"
    t.string   "level"
    t.text     "description"
    t.string   "sgsss_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["affiliation_type_id"], name: "index_affiliation_type_levels_on_affiliation_type_id", using: :btree
  end

  create_table "affiliation_types", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "agenda_programs", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "master_company_id"
    t.integer  "agenda_id"
    t.integer  "medic_id"
    t.integer  "specialty_id"
    t.string   "consultory_code"
    t.datetime "date_time_patient"
    t.datetime "date_time_appointment"
    t.datetime "date_time_system"
    t.string   "patient_id"
    t.string   "patient_type_id"
    t.string   "patient_affiliation_contract"
    t.string   "agend_process"
    t.string   "appointment_state"
    t.string   "petition_time"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["agenda_id"], name: "index_agenda_programs_on_agenda_id", using: :btree
    t.index ["company_id"], name: "index_agenda_programs_on_company_id", using: :btree
    t.index ["master_company_id"], name: "index_agenda_programs_on_master_company_id", using: :btree
    t.index ["medic_id"], name: "index_agenda_programs_on_medic_id", using: :btree
    t.index ["specialty_id"], name: "index_agenda_programs_on_specialty_id", using: :btree
  end

  create_table "agendas", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "master_company_id"
    t.string   "name"
    t.string   "day"
    t.time     "start_hour"
    t.time     "end_hour"
    t.string   "petition_time"
    t.integer  "max_patients"
    t.string   "medic_code"
    t.integer  "specialty_id"
    t.string   "consultory_code"
    t.string   "agenda_state"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["company_id"], name: "index_agendas_on_company_id", using: :btree
    t.index ["master_company_id"], name: "index_agendas_on_master_company_id", using: :btree
    t.index ["specialty_id"], name: "index_agendas_on_specialty_id", using: :btree
  end

  create_table "anatofarmacologics", force: :cascade do |t|
    t.string   "code"
    t.string   "code_lvl_1"
    t.string   "name_code_1"
    t.string   "code_lvl_2"
    t.string   "name_code_2"
    t.string   "code_lvl_3"
    t.string   "name_code_3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "application_via", force: :cascade do |t|
    t.text     "description"
    t.string   "sex"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "attention_areas", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "branch_office_id"
    t.integer  "pabillion_id"
    t.string   "name"
    t.string   "type"
    t.time     "start_hour"
    t.time     "end_hour"
    t.string   "state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["branch_office_id"], name: "index_attention_areas_on_branch_office_id", using: :btree
    t.index ["company_id"], name: "index_attention_areas_on_company_id", using: :btree
    t.index ["pabillion_id"], name: "index_attention_areas_on_pabillion_id", using: :btree
  end

  create_table "branch_offices", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "address"
    t.string   "cellphone"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_branch_offices_on_company_id", using: :btree
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "nit"
    t.integer  "verification_digit"
    t.string   "social_reason"
    t.string   "commercial_name"
    t.string   "web_page"
    t.string   "contributor_types"
    t.string   "address"
    t.string   "cellphone"
    t.string   "phone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "concentrations", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "master_company_id"
    t.text     "message"
    t.string   "position"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["company_id"], name: "index_contacts_on_company_id", using: :btree
    t.index ["master_company_id"], name: "index_contacts_on_master_company_id", using: :btree
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_contracts_on_company_id", using: :btree
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_departments_on_country_id", using: :btree
  end

  create_table "farmaceutic_forms", force: :cascade do |t|
    t.string   "description"
    t.string   "application_code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "group_products", force: :cascade do |t|
    t.integer  "company_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_group_products_on_company_id", using: :btree
  end

  create_table "master_companies", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "nit"
    t.string   "verification_digit"
    t.string   "social_reason"
    t.string   "commercial_name"
    t.string   "web_page"
    t.string   "contributor_type"
    t.string   "rips_code"
    t.string   "address"
    t.string   "cellphone"
    t.string   "phone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["company_id"], name: "index_master_companies_on_company_id", using: :btree
  end

  create_table "medics", force: :cascade do |t|
    t.string   "identification"
    t.string   "id_type"
    t.string   "first_name1"
    t.string   "first_name2"
    t.string   "last_name1"
    t.string   "last_name2"
    t.text     "medical_record"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "email"
    t.string   "agend_management"
    t.integer  "specialty_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["specialty_id"], name: "index_medics_on_specialty_id", using: :btree
  end

  create_table "municipalities", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "department_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["country_id"], name: "index_municipalities_on_country_id", using: :btree
    t.index ["department_id"], name: "index_municipalities_on_department_id", using: :btree
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "department_id"
    t.integer  "municipality_id"
    t.string   "name"
    t.string   "zone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["country_id"], name: "index_neighborhoods_on_country_id", using: :btree
    t.index ["department_id"], name: "index_neighborhoods_on_department_id", using: :btree
    t.index ["municipality_id"], name: "index_neighborhoods_on_municipality_id", using: :btree
  end

  create_table "pabillions", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "branch_office_id"
    t.string   "name"
    t.string   "state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["branch_office_id"], name: "index_pabillions_on_branch_office_id", using: :btree
    t.index ["company_id"], name: "index_pabillions_on_company_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "identification"
    t.string   "id_type"
    t.string   "last_name1"
    t.string   "last_name2"
    t.string   "first_name1"
    t.string   "first_name2"
    t.string   "special_attention"
    t.string   "country"
    t.string   "department"
    t.string   "municipality"
    t.string   "neighborhood"
    t.string   "email"
    t.string   "address"
    t.string   "work_company"
    t.string   "marital_status"
    t.string   "education_level_state"
    t.string   "birthday"
    t.string   "education_level"
    t.string   "occupation"
    t.string   "profession"
    t.string   "sex"
    t.string   "phone"
    t.string   "office_phone"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "procedural_finalities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedural_types", force: :cascade do |t|
    t.string   "name"
    t.string   "rips_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedure_portfolios", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "procedure_id"
    t.float    "procedure_cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["company_id"], name: "index_procedure_portfolios_on_company_id", using: :btree
    t.index ["procedure_id"], name: "index_procedure_portfolios_on_procedure_id", using: :btree
  end

  create_table "procedures", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "description"
    t.string   "procedural_type"
    t.string   "service_purpose"
    t.string   "procedural_time"
    t.string   "sex"
    t.string   "begin_day"
    t.string   "end_day"
    t.string   "require_dx"
    t.string   "informed_consent"
    t.string   "attention_level"
    t.string   "state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["company_id"], name: "index_procedures_on_company_id", using: :btree
    t.index ["procedural_type"], name: "index_procedures_on_procedural_type", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "group_product"
    t.string   "sub_group_product"
    t.string   "brand"
    t.string   "invima_reg"
    t.string   "cum_code"
    t.string   "anatofarmacologic"
    t.string   "active_principle"
    t.string   "farmaceutic_form"
    t.string   "concentration"
    t.string   "pos"
    t.string   "unity_buy"
    t.string   "unity_buy_fraction"
    t.string   "content"
    t.string   "unity"
    t.string   "app_unity"
    t.string   "facturation_unity"
    t.string   "storage_condition"
    t.string   "reuse"
    t.float    "iva_percentage"
    t.string   "regulation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["active_principle"], name: "index_products_on_active_principle", using: :btree
    t.index ["anatofarmacologic"], name: "index_products_on_anatofarmacologic", using: :btree
    t.index ["brand"], name: "index_products_on_brand", using: :btree
    t.index ["company_id"], name: "index_products_on_company_id", using: :btree
    t.index ["concentration"], name: "index_products_on_concentration", using: :btree
    t.index ["farmaceutic_form"], name: "index_products_on_farmaceutic_form", using: :btree
    t.index ["group_product"], name: "index_products_on_group_product", using: :btree
    t.index ["sub_group_product"], name: "index_products_on_sub_group_product", using: :btree
  end

  create_table "rip_groups", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_group_products", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "group_product_id"
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["company_id"], name: "index_sub_group_products_on_company_id", using: :btree
    t.index ["group_product_id"], name: "index_sub_group_products_on_group_product_id", using: :btree
  end

  create_table "supplies", force: :cascade do |t|
    t.integer  "anatofarmacologic_id"
    t.integer  "farmaceutic_form_id"
    t.integer  "active_principle_id"
    t.integer  "concentration_id"
    t.string   "atc_code"
    t.string   "rips_code"
    t.string   "control_code"
    t.string   "pos_code"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["active_principle_id"], name: "index_supplies_on_active_principle_id", using: :btree
    t.index ["anatofarmacologic_id"], name: "index_supplies_on_anatofarmacologic_id", using: :btree
    t.index ["concentration_id"], name: "index_supplies_on_concentration_id", using: :btree
    t.index ["farmaceutic_form_id"], name: "index_supplies_on_farmaceutic_form_id", using: :btree
  end

  create_table "supply_portfolio_details", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "supply_portfolio_id"
    t.integer  "supply_id"
    t.float    "supply_cost"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["company_id"], name: "index_supply_portfolio_details_on_company_id", using: :btree
    t.index ["supply_id"], name: "index_supply_portfolio_details_on_supply_id", using: :btree
    t.index ["supply_portfolio_id"], name: "index_supply_portfolio_details_on_supply_portfolio_id", using: :btree
  end

  create_table "supply_portfolios", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_supply_portfolios_on_company_id", using: :btree
  end

  create_table "unity_measures", force: :cascade do |t|
    t.string   "name"
    t.integer  "unity_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["unity_type_id"], name: "index_unity_measures_on_unity_type_id", using: :btree
  end

  create_table "unity_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
