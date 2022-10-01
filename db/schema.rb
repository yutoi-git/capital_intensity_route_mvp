# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_30_043939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", primary_key: "company_code", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lines", primary_key: "line_code", id: :serial, force: :cascade do |t|
    t.integer "company_code", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lines_stations", force: :cascade do |t|
    t.integer "line_code", null: false
    t.integer "station_code", null: false
    t.integer "order", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["line_code", "station_code"], name: "index_lines_stations_on_line_code_and_station_code", unique: true
  end

  create_table "stations", primary_key: "station_code", id: :serial, force: :cascade do |t|
    t.integer "company_code", null: false
    t.string "name", null: false
    t.float "longitude", null: false
    t.float "latitude", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "lower_six"
    t.float "upper_six"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "lines", "companies", column: "company_code", primary_key: "company_code"
  add_foreign_key "lines_stations", "lines", column: "line_code", primary_key: "line_code"
  add_foreign_key "lines_stations", "stations", column: "station_code", primary_key: "station_code"
  add_foreign_key "stations", "companies", column: "company_code", primary_key: "company_code"
end
