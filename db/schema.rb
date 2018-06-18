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

ActiveRecord::Schema.define(version: 2018_06_18_130221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academies", force: :cascade do |t|
    t.string "name"
    t.date "begin_date"
    t.date "end_date"
    t.bigint "creator_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_academies_on_creator_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "description"
    t.string "cpf"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

  create_table "experiences", force: :cascade do |t|
    t.date "begin_date"
    t.date "end_date"
    t.string "name"
    t.text "note"
    t.string "address"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_experiences_on_creator_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_languages_on_creator_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_skills_on_creator_id"
  end

  add_foreign_key "academies", "creators"
  add_foreign_key "experiences", "creators"
  add_foreign_key "languages", "creators"
  add_foreign_key "skills", "creators"
end
