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

ActiveRecord::Schema.define(version: 2020_03_11_080436) do

  create_table "appoitments", force: :cascade do |t|
    t.datetime "date"
    t.integer "physician_id"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_appoitments_on_patient_id"
    t.index ["physician_id"], name: "index_appoitments_on_physician_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.integer "appoitment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appoitment_id"], name: "index_cities_on_appoitment_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physicians_specialities_{:id=>false}", id: false, force: :cascade do |t|
    t.integer "physicians_speciality_id", null: false
    t.integer "{:id=>false}_id", null: false
    t.integer "physician_id"
    t.integer "speciality_id"
    t.index ["physician_id"], name: "index_physicians_specialities_{:id=>false}_on_physician_id"
    t.index ["speciality_id"], name: "index_physicians_specialities_{:id=>false}_on_speciality_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
