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

ActiveRecord::Schema[7.0].define(version: 2022_05_01_144252) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cashflows", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_cashflows_on_chapter_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.date "founded_at"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "value"
    t.date "date"
    t.bigint "cashflow_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cashflow_id"], name: "index_entries_on_cashflow_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "user_type"
    t.bigint "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_users_on_chapter_id"
  end

  add_foreign_key "cashflows", "chapters"
  add_foreign_key "entries", "cashflows"
  add_foreign_key "entries", "users"
  add_foreign_key "users", "chapters"
end
