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

ActiveRecord::Schema[7.0].define(version: 2022_05_04_132745) do
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

  create_table "registration_codes", force: :cascade do |t|
    t.string "code"
    t.string "email"
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_registration_codes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.bigint "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "cid"
    t.date "birthday"
    t.index ["chapter_id"], name: "index_users_on_chapter_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cashflows", "chapters"
  add_foreign_key "entries", "cashflows"
  add_foreign_key "entries", "users"
  add_foreign_key "registration_codes", "users"
  add_foreign_key "users", "chapters"
end
