# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_18_221108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "zip_code"
    t.string "street"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "establishment_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consultations", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.bigint "doctor_id", null: false
    t.bigint "address_id", null: false
    t.bigint "exam_id", null: false
    t.bigint "health_problem_id", null: false
    t.string "symptoms"
    t.boolean "routine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_consultations_on_address_id"
    t.index ["doctor_id"], name: "index_consultations_on_doctor_id"
    t.index ["exam_id"], name: "index_consultations_on_exam_id"
    t.index ["health_problem_id"], name: "index_consultations_on_health_problem_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "crm"
    t.string "phone"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.string "body_part"
    t.string "laboratory_name"
    t.bigint "address_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_exams_on_address_id"
  end

  create_table "health_problems", force: :cascade do |t|
    t.string "name"
    t.string "fase"
    t.string "diagnostic_date"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospitalizations", force: :cascade do |t|
    t.date "initial_date"
    t.date "final_date"
    t.bigint "health_problem_id", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_hospitalizations_on_address_id"
    t.index ["health_problem_id"], name: "index_hospitalizations_on_health_problem_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.string "mg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.bigint "health_problem_id", null: false
    t.bigint "medicine_id", null: false
    t.bigint "consultation_id", null: false
    t.string "posology"
    t.integer "box"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultation_id"], name: "index_treatments_on_consultation_id"
    t.index ["health_problem_id"], name: "index_treatments_on_health_problem_id"
    t.index ["medicine_id"], name: "index_treatments_on_medicine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "age"
    t.date "birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consultations", "addresses"
  add_foreign_key "consultations", "doctors"
  add_foreign_key "consultations", "exams"
  add_foreign_key "consultations", "health_problems"
  add_foreign_key "consultations", "users"
  add_foreign_key "exams", "addresses"
  add_foreign_key "hospitalizations", "addresses"
  add_foreign_key "hospitalizations", "health_problems"
  add_foreign_key "treatments", "consultations"
  add_foreign_key "treatments", "health_problems"
  add_foreign_key "treatments", "medicines"
end
