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


ActiveRecord::Schema.define(version: 20171116144853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_contracts", force: :cascade do |t|
    t.integer "status", default: 0
    t.integer "price"
    t.string "payment_unit", default: "hr"
    t.integer "freelancer_rating"
    t.boolean "negotiations"
    t.bigint "job_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_contracts_on_job_id"
    t.index ["user_id"], name: "index_job_contracts_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "skills"
    t.text "description"
    t.string "title"
    t.string "level"
    t.string "industry"
    t.string "location"
    t.string "starting_date"
    t.string "ending_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "payment_unit", default: "hr"
    t.integer "payment"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "location"
    t.string "business_name"
    t.integer "pay_per_hour"
    t.string "payment_currency", default: "€"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.string "description", default: "Describe yourself and experience."
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "job_contracts", "jobs"
  add_foreign_key "job_contracts", "users"
end
