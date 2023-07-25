# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_07_24_194945) do

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

  create_table "accidents", force: :cascade do |t|
    t.string "some_column"
    t.integer "another_column"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "license_number"
    t.bigint "tracking_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tracking_unit_id"], name: "index_drivers_on_tracking_unit_id"
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

  create_table "geofences", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.integer "radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "tracking_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tracking_unit_id"], name: "index_messages_on_tracking_unit_id"
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

  create_table "tickets", force: :cascade do |t|
    t.string "subject"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracking_units", force: :cascade do |t|
    t.string "name"
    t.string "serial_number"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.datetime "timestamp"
    t.bigint "tracking_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tracking_unit_id"], name: "index_tracks_on_tracking_unit_id"
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
    t.string "make"
    t.string "model"
    t.string "color"
    t.bigint "tracking_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "odometer"
    t.string "country"
    t.index ["tracking_unit_id"], name: "index_vehicles_on_tracking_unit_id"
  end

  add_foreign_key "accident_reports", "vehicles"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "drivers", "tracking_units"
  add_foreign_key "efuel_managements", "vehicles"
  add_foreign_key "job_cards", "vehicles"
  add_foreign_key "licence_administrations", "vehicles"
  add_foreign_key "maintenances", "vehicles"
  add_foreign_key "messages", "tracking_units"
  add_foreign_key "tracks", "tracking_units"
  add_foreign_key "traffic_fines", "vehicles"
  add_foreign_key "vehicles", "tracking_units"
end
