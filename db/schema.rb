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

ActiveRecord::Schema.define(version: 2023_07_23_122340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accident_reports", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.text "description"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_accident_reports_on_vehicle_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "efuel_managements", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.string "fuel_type"
    t.decimal "fuel_amount"
    t.date "fuel_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_efuel_managements_on_vehicle_id"
  end

  create_table "help_desk_tickets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "status"
    t.string "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_cards", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.text "description"
    t.string "job_type"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_job_cards_on_vehicle_id"
  end

  create_table "licence_administrations", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.string "licence_number"
    t.date "expiry_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_licence_administrations_on_vehicle_id"
  end

  create_table "maintenances", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.text "description"
    t.date "maintenance_date"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_maintenances_on_vehicle_id"
  end

  create_table "rental_vehicles", force: :cascade do |t|
    t.string "category"
    t.string "make"
    t.string "model"
    t.string "registration_number"
    t.decimal "rental_rate"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracking_units", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.string "tracking_code"
    t.datetime "last_reported_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_tracking_units_on_vehicle_id"
  end

  create_table "traffic_fines", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.date "fine_date"
    t.decimal "amount"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_traffic_fines_on_vehicle_id"
  end

  create_table "vehicle_verifications", force: :cascade do |t|
    t.integer "vehicle_id"
    t.date "report_date"
    t.text "condition"
    t.decimal "price"
    t.string "model"
    t.string "make"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "model"
    t.integer "year"
    t.integer "chassis_number"
    t.string "color"
    t.datetime "registration_date"
    t.integer "odometer_reading"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_vehicles_on_customer_id"
  end

  add_foreign_key "accident_reports", "vehicles"
  add_foreign_key "efuel_managements", "vehicles"
  add_foreign_key "job_cards", "vehicles"
  add_foreign_key "licence_administrations", "vehicles"
  add_foreign_key "maintenances", "vehicles"
  add_foreign_key "tracking_units", "vehicles"
  add_foreign_key "traffic_fines", "vehicles"
  add_foreign_key "vehicles", "customers"
end
