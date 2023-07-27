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

ActiveRecord::Schema[7.0].define(version: 2023_07_27_064403) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer "application_id"
    t.integer "user_id"
    t.string "job_id"
    t.datetime "application_date"
    t.string "resume_attachment"
    t.string "cover_letter_attachment"
    t.string "application_status"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "company_id"
    t.string "company_name"
    t.string "company_size"
    t.string "company_logo"
    t.string "company_website"
    t.string "email"
    t.integer "phone"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "jon_id"
    t.integer "company_id"
    t.string "title"
    t.string "description"
    t.string "location"
    t.string "requirement"
    t.datetime "application_deadline"
    t.string "experience_level"
    t.integer "salary_range"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "email"
    t.string "password_digest"
    t.string "profile_image"
    t.string "name"
    t.integer "contacts"
    t.string "resume_attachment"
    t.string "job_title"
  end

end
