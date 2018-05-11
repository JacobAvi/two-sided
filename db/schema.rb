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

ActiveRecord::Schema.define(version: 20180510082859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.text "address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_no"
    t.text "image_data"
    t.string "car_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "trip_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pickup_address_id"
    t.bigint "dropoff_address_id"
    t.index ["dropoff_address_id"], name: "index_trip_requests_on_dropoff_address_id"
    t.index ["pickup_address_id"], name: "index_trip_requests_on_pickup_address_id"
    t.index ["trip_id"], name: "index_trip_requests_on_trip_id"
    t.index ["user_id"], name: "index_trip_requests_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.decimal "fare"
    t.integer "avail_seats"
    t.bigint "driver_id"
    t.bigint "passenger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.bigint "start_address_id"
    t.bigint "finish_address_id"
    t.index ["driver_id"], name: "index_trips_on_driver_id"
    t.index ["finish_address_id"], name: "index_trips_on_finish_address_id"
    t.index ["passenger_id"], name: "index_trips_on_passenger_id"
    t.index ["start_address_id"], name: "index_trips_on_start_address_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "profiles", "users"
  add_foreign_key "trip_requests", "addresses", column: "dropoff_address_id"
  add_foreign_key "trip_requests", "addresses", column: "pickup_address_id"
  add_foreign_key "trip_requests", "trips"
  add_foreign_key "trip_requests", "users"
  add_foreign_key "trips", "addresses", column: "finish_address_id"
  add_foreign_key "trips", "addresses", column: "start_address_id"
end
