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

ActiveRecord::Schema[7.0].define(version: 2023_07_28_084931) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.string "logo"
    t.string "website"
    t.string "email"
    t.integer "phone"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_employers_on_user_id"
  end

  create_table "job_seekers", force: :cascade do |t|
    t.string "profile_image"
    t.string "name"
    t.integer "contact"
    t.string "resume_attachment"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_job_seekers_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
  end

  create_table "saved_jobs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "job_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "email"
    t.string "password_digest"
    t.string "role"
  end

  add_foreign_key "employers", "users"
  add_foreign_key "job_seekers", "users"
end
