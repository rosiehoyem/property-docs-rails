# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150823044219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leases", force: :cascade do |t|
    t.string   "term_in_months"
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "rent"
    t.decimal  "security_deposit",      precision: 12, scale: 2
    t.decimal  "storage_fee",           precision: 12, scale: 2
    t.decimal  "parking_fee",           precision: 12, scale: 2
    t.decimal  "total_monthly_rent",    precision: 12, scale: 2
    t.string   "pets"
    t.decimal  "pet_deposit",           precision: 12, scale: 2
    t.decimal  "first_month_rent_paid", precision: 12, scale: 2
    t.decimal  "last_month_rent_paid",  precision: 12, scale: 2
    t.integer  "tenant_id"
    t.integer  "property_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "address"
    t.string   "unit"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "bedrooms"
    t.string   "bathrooms"
    t.string   "sqft"
    t.string   "storage"
    t.string   "parking"
    t.string   "included_utilities"
    t.string   "not_included_utilities"
    t.string   "appliances"
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
