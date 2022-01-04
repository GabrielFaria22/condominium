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

ActiveRecord::Schema.define(version: 2022_01_04_124647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.integer "number", null: false
    t.text "observation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "person_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_events_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "type"
    t.string "sex"
    t.integer "age"
    t.string "phone_1"
    t.string "phone_2"
    t.string "phone_whatsapp"
    t.string "social_media_1"
    t.string "social_media_2"
    t.string "email"
    t.string "address"
    t.string "bank_account"
    t.string "document_1"
    t.string "document_2"
    t.string "profession"
    t.string "real_estate"
    t.string "real_estate_contact"
    t.text "observation"
    t.bigint "apartments_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartments_id"], name: "index_people_on_apartments_id"
  end

end
