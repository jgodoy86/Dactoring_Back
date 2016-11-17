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

ActiveRecord::Schema.define(version: 20161024214943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_principles", force: :cascade do |t|
    t.string   "code"
    t.string   "short_principle"
    t.string   "large_principle"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "agenda_programs", force: :cascade do |t|
    t.string   "agenda_code"
    t.string   "medic_code"
    t.string   "specialty_code"
    t.string   "consultory_code"
    t.string   "date_time_patient"
    t.string   "date_time_appointment"
    t.string   "date_time_system"
    t.string   "patient_id"
    t.string   "patient_type_id"
    t.string   "patient_affiliation_contract"
    t.string   "agend_process"
    t.string   "appointment_state"
    t.string   "petition_time"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "agendas", force: :cascade do |t|
    t.string   "agenda_code"
    t.string   "name"
    t.string   "day"
    t.string   "start_hour"
    t.string   "end_hour"
    t.string   "petition_time"
    t.string   "max_patients"
    t.string   "medic_code"
    t.string   "specialty_code"
    t.string   "consultory_code"
    t.string   "agenda_state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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

  create_table "aplication_via", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.string   "sex"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "atention_areas", force: :cascade do |t|
    t.string   "company_code"
    t.string   "pabillion_code"
    t.string   "area_code"
    t.string   "area_name"
    t.string   "atention_type"
    t.string   "start_hour"
    t.string   "end_hour"
    t.string   "state"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_code"
    t.string   "nit"
    t.integer  "verification_digit"
    t.string   "social_reason"
    t.string   "commercial_name"
    t.string   "web_page"
    t.string   "contributor_type"
    t.string   "headquarters"
    t.string   "address"
    t.string   "cellphone"
    t.string   "phone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "concentrations", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "message"
    t.string   "position"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "company"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "country_code"
    t.string   "code"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "farmaceutic_forms", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.string   "aplication_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "group_products", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medics", force: :cascade do |t|
    t.string   "medic_code"
    t.string   "medic_id"
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
    t.string   "specialty_code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.string   "country_code"
    t.string   "department_code"
    t.string   "code"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "country_code"
    t.string   "department_code"
    t.string   "municipality_code"
    t.string   "code"
    t.string   "name"
    t.string   "zone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pabillions", force: :cascade do |t|
    t.string   "company_code"
    t.string   "code"
    t.string   "name"
    t.string   "state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "number_id"
    t.string   "document_type"
    t.string   "last_name1"
    t.string   "last_name2"
    t.string   "first_name1"
    t.string   "first_name2"
    t.string   "special_atention"
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
    t.string   "ocupation"
    t.string   "profession"
    t.string   "sex"
    t.string   "phone"
    t.string   "office_phone"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "procedural_finalities", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedural_types", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "rips_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.string   "procedural_type"
    t.string   "service_end"
    t.string   "procedural_time"
    t.string   "sex"
    t.string   "begin_day"
    t.string   "end_day"
    t.string   "require_dx"
    t.string   "inform_consentment"
    t.string   "atention_level"
    t.string   "state"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "group"
    t.string   "sub_group"
    t.string   "brand"
    t.string   "invima_reg"
    t.string   "cum_code"
    t.string   "anato_code"
    t.string   "active_princio"
    t.string   "form"
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
    t.string   "iva_percentage"
    t.string   "regulation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "rip_groups", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_group_products", force: :cascade do |t|
    t.string   "group_code"
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "anato_code"
    t.string   "farmaceutic_form_code"
    t.string   "active_principle_code"
    t.string   "concentration_code"
    t.string   "atc_code"
    t.string   "rips_code"
    t.string   "control_code"
    t.string   "pos_code"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "unity_measures", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "code_unity_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "unity_types", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
