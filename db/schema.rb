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

ActiveRecord::Schema.define(version: 2020_06_21_171159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "buildings", force: :cascade do |t|
    t.bigint "landlord_id"
    t.string "reference"
    t.integer "apartment_number"
    t.string "address"
    t.bigint "city_id"
    t.string "neighborhood"
    t.float "surface"
    t.float "value"
    t.text "about"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_buildings_on_city_id"
    t.index ["landlord_id"], name: "index_buildings_on_landlord_id"
    t.index ["user_id"], name: "index_buildings_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.string "iso_code"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_currencies_on_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "property_id"
    t.bigint "lease_id"
    t.string "expense_type"
    t.string "beneficiary"
    t.string "payment_method"
    t.float "amount"
    t.float "received_amount"
    t.integer "tax_id"
    t.float "total_amount"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lease_id"], name: "index_expenses_on_lease_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "handovers", force: :cascade do |t|
    t.string "handover_type"
    t.string "reference"
    t.integer "property_id"
    t.bigint "lease_id"
    t.string "doors"
    t.string "windows"
    t.string "wall_cover"
    t.string "flooring"
    t.string "ventilators"
    t.string "air_conditioners"
    t.string "light_bulbs"
    t.string "faucets"
    t.string "showers"
    t.string "doorbell"
    t.string "ceiling"
    t.string "electricity"
    t.text "notes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lease_id"], name: "index_handovers_on_lease_id"
    t.index ["user_id"], name: "index_handovers_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "property_id"
    t.bigint "lease_id"
    t.string "income_type"
    t.string "payer"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "payment_method"
    t.float "amount"
    t.float "received_amount"
    t.integer "tax_id"
    t.float "total_amount"
    t.string "receipt_number"
    t.integer "month"
    t.integer "year"
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lease_id"], name: "index_incomes_on_lease_id"
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "landlord_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_landlord_types_on_user_id"
  end

  create_table "landlords", force: :cascade do |t|
    t.bigint "landlord_type_id"
    t.string "civility"
    t.string "last_name"
    t.string "first_name"
    t.datetime "birth_date"
    t.string "birth_place"
    t.string "id_type"
    t.string "id_number"
    t.datetime "id_expiration"
    t.string "profession"
    t.string "nationality"
    t.string "company_name"
    t.string "address"
    t.string "phone"
    t.string "city"
    t.string "country"
    t.string "email"
    t.text "about"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landlord_type_id"], name: "index_landlords_on_landlord_type_id"
    t.index ["user_id"], name: "index_landlords_on_user_id"
  end

  create_table "leases", force: :cascade do |t|
    t.bigint "tenant_id"
    t.integer "building_id"
    t.integer "property_id"
    t.string "usage_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "effective_date"
    t.string "duration"
    t.string "id_type"
    t.string "id_number"
    t.string "periodicity"
    t.string "payment_method"
    t.integer "payment_date"
    t.integer "receipt_date"
    t.float "rent_excluding_tax"
    t.float "vat_rate"
    t.float "net_amount"
    t.boolean "vat_paid_by_tenant"
    t.float "guarantee_amount"
    t.float "avance"
    t.boolean "renewable"
    t.string "status"
    t.text "notes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_leases_on_tenant_id"
    t.index ["user_id"], name: "index_leases_on_user_id"
  end

  create_table "mandates", force: :cascade do |t|
    t.integer "landlord_id"
    t.integer "building_id"
    t.integer "property_id"
    t.string "usage_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "duration"
    t.string "id_type"
    t.string "id_number"
    t.string "periodicity"
    t.float "property_value"
    t.float "commission_rate"
    t.float "commission_amount"
    t.float "property_tax_rate"
    t.float "property_tax_amount"
    t.float "net_amount"
    t.string "status"
    t.text "notes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mandates_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "activity"
    t.string "address"
    t.string "phone"
    t.string "po_box"
    t.string "city"
    t.string "country"
    t.string "email"
    t.string "website"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "civility"
    t.string "address"
    t.string "phone"
    t.text "about"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "building_id"
    t.bigint "landlord_id"
    t.bigint "property_type_id"
    t.string "reference"
    t.string "description"
    t.integer "pieces_number"
    t.integer "room_number"
    t.string "bath_room"
    t.float "rent_excluding_tax"
    t.string "address"
    t.bigint "city_id"
    t.string "neighborhood"
    t.string "street"
    t.string "door"
    t.float "surface"
    t.float "value"
    t.text "about"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_properties_on_city_id"
    t.index ["landlord_id"], name: "index_properties_on_landlord_id"
    t.index ["property_type_id"], name: "index_properties_on_property_type_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_property_types_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "parent"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.string "name"
    t.float "rate"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_taxes_on_user_id"
  end

  create_table "tenant_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tenant_types_on_user_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.bigint "tenant_type_id"
    t.string "civility"
    t.string "last_name"
    t.string "first_name"
    t.datetime "birth_date"
    t.string "birth_place"
    t.string "id_type"
    t.string "id_number"
    t.datetime "id_expiration"
    t.string "profession"
    t.string "nationality"
    t.string "company_name"
    t.string "address"
    t.string "phone"
    t.string "city"
    t.string "country"
    t.string "email"
    t.text "about"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_type_id"], name: "index_tenants_on_tenant_type_id"
    t.index ["user_id"], name: "index_tenants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "login"
    t.bigint "role_id"
    t.bigint "service_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["service_id"], name: "index_users_on_service_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "buildings", "cities"
  add_foreign_key "buildings", "landlords"
  add_foreign_key "buildings", "users"
  add_foreign_key "cities", "users"
  add_foreign_key "currencies", "users"
  add_foreign_key "expenses", "leases"
  add_foreign_key "expenses", "users"
  add_foreign_key "handovers", "leases"
  add_foreign_key "handovers", "users"
  add_foreign_key "incomes", "leases"
  add_foreign_key "incomes", "users"
  add_foreign_key "landlord_types", "users"
  add_foreign_key "landlords", "landlord_types"
  add_foreign_key "landlords", "users"
  add_foreign_key "leases", "tenants"
  add_foreign_key "leases", "users"
  add_foreign_key "mandates", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "properties", "cities"
  add_foreign_key "properties", "landlords"
  add_foreign_key "properties", "property_types"
  add_foreign_key "properties", "users"
  add_foreign_key "property_types", "users"
  add_foreign_key "taxes", "users"
  add_foreign_key "tenant_types", "users"
  add_foreign_key "tenants", "tenant_types"
  add_foreign_key "tenants", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "services"
end
