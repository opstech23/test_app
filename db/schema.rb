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

ActiveRecord::Schema.define(version: 20171113091952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_tasks", force: :cascade do |t|
    t.string "task_title"
    t.text "task_description"
    t.bigint "projects_id"
    t.bigint "users_id"
    t.boolean "approved_by_admin"
    t.boolean "approved_by_pto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projects_id"], name: "index_project_tasks_on_projects_id"
    t.index ["users_id"], name: "index_project_tasks_on_users_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_title"
    t.text "project_description"
    t.integer "project_status", default: 0
    t.string "pictures"
    t.boolean "approved_by_admin"
    t.boolean "approved_by_pto"
    t.bigint "users_id"
    t.bigint "donation_goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_projects_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "pto_role"
    t.boolean "admin_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.decimal "donation_amount"
    t.bigint "project_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_votes_on_project_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "project_tasks", "projects", column: "projects_id"
  add_foreign_key "project_tasks", "users", column: "users_id"
  add_foreign_key "projects", "users", column: "users_id"
  add_foreign_key "votes", "projects"
  add_foreign_key "votes", "users"
end
