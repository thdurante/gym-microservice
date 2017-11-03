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

ActiveRecord::Schema.define(version: 20171028125840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrollments", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "training_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_enrollments_on_person_id"
    t.index ["training_session_id"], name: "index_enrollments_on_training_session_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_gyms_on_name", unique: true
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birth"
    t.string "registry_number"
    t.string "integration_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registry_number"], name: "index_people_on_registry_number", unique: true
  end

  create_table "training_sessions", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
    t.bigint "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_training_sessions_on_gym_id"
  end

  add_foreign_key "enrollments", "people"
  add_foreign_key "enrollments", "training_sessions"
  add_foreign_key "training_sessions", "gyms"
end
