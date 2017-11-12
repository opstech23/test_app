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

ActiveRecord::Schema.define(version: 20171112204612) do

  create_table "project_tasks", force: :cascade do |t|
    t.string "task_title"
    t.text "task_description"
    t.integer "projects_id"
    t.integer "users_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.boolean "pto_role"
    t.boolean "admin_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
