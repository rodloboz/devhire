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

ActiveRecord::Schema.define(version: 2018_10_27_104650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "developer_id"
    t.bigint "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_bookings_on_developer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id"
    t.string "bookmarked_type"
    t.bigint "bookmarked_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookmarked_type", "bookmarked_id"], name: "index_bookmarks_on_bookmarked_type_and_bookmarked_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "developer_skills", force: :cascade do |t|
    t.bigint "developer_id"
    t.bigint "skill_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_developer_skills_on_developer_id"
    t.index ["skill_id"], name: "index_developer_skills_on_skill_id"
  end

  create_table "developers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "github_username"
    t.string "avatar_url"
    t.text "bio"
    t.integer "hourly_rate", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bookings_count", default: 0, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_developers_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "stack"
    t.string "photo"
    t.text "description"
    t.bigint "developer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_projects_on_developer_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "bookings", "developers"
  add_foreign_key "bookings", "users"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "developer_skills", "developers"
  add_foreign_key "developer_skills", "skills"
  add_foreign_key "developers", "users"
  add_foreign_key "projects", "developers"
end
