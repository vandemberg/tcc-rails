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

ActiveRecord::Schema[7.0].define(version: 2023_01_12_030912) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.bigint "social_group_id", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_members_on_person_id"
    t.index ["social_group_id"], name: "index_members_on_social_group_id"
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "notes"
    t.bigint "neighbourhood_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbourhood_id"], name: "index_people_on_neighbourhood_id"
  end

  create_table "rops", force: :cascade do |t|
    t.string "name"
    t.bigint "neighbourhood_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbourhood_id"], name: "index_rops_on_neighbourhood_id"
  end

  create_table "social_groups", force: :cascade do |t|
    t.string "name"
    t.bigint "neighbourhood_id", null: false
    t.bigint "responsible_id"
    t.integer "group_type"
    t.string "phone"
    t.string "email"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbourhood_id"], name: "index_social_groups_on_neighbourhood_id"
    t.index ["responsible_id"], name: "index_social_groups_on_responsible_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "members", "people"
  add_foreign_key "members", "social_groups"
  add_foreign_key "people", "neighbourhoods"
  add_foreign_key "rops", "neighbourhoods"
  add_foreign_key "social_groups", "neighbourhoods"
  add_foreign_key "social_groups", "people", column: "responsible_id"
end
