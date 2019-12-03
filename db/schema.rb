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

ActiveRecord::Schema.define(version: 2019_12_03_081736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.string "architects"
    t.string "neighborhood"
    t.string "metro_stop"
    t.string "main_picture"
    t.text "photo_slider", default: [], array: true
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "architectural_style"
    t.string "contributor_author"
    t.text "description"
    t.string "fun_facts"
    t.string "main_photo_credit"
    t.bigint "user_id"
    t.string "city"
    t.boolean "fact_checked"
    t.string "district"
    t.string "favoritable_total"
    t.string "favoritable_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_buildings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "open_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "wechat_name"
    t.string "avatar"
    t.string "level"
    t.text "description"
    t.string "favoritor_score"
    t.string "favoritor_total"
    t.string "favoritable_score"
    t.string "favoritable_total"
  end

  add_foreign_key "buildings", "users"
end
