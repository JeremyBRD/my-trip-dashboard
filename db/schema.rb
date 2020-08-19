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

ActiveRecord::Schema.define(version: 2020_08_19_134806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "step_infos", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.string "type"
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["step_id"], name: "index_step_infos_on_step_id"
  end

  create_table "steps", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_steps_on_trip_id"
  end

  create_table "transportations", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.string "departure_city"
    t.datetime "departure_date"
    t.datetime "departure_timestamp"
    t.string "destination_city"
    t.datetime "arrival_date"
    t.datetime "arrival_timestamp"
    t.string "flight_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "transport_id", null: false
    t.index ["step_id"], name: "index_transportations_on_step_id"
    t.index ["transport_id"], name: "index_transportations_on_transport_id"
  end

  create_table "transports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "starting_date"
    t.datetime "starting_timestamp"
    t.datetime "end_date"
    t.datetime "end_timestamp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "home_town"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "step_infos", "steps"
  add_foreign_key "steps", "trips"
  add_foreign_key "transportations", "steps"
  add_foreign_key "transportations", "transports"
  add_foreign_key "trips", "users"
end
