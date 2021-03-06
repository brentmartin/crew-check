# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160524020500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "completed_surveys", force: :cascade do |t|
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "completed_surveys", ["survey_id"], name: "index_completed_surveys_on_survey_id", using: :btree

  create_table "evaluations", force: :cascade do |t|
    t.float    "answer"
    t.integer  "question_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "completed_survey_id"
  end

  add_index "evaluations", ["completed_survey_id"], name: "index_evaluations_on_completed_survey_id", using: :btree
  add_index "evaluations", ["question_id"], name: "index_evaluations_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "body"
    t.string   "context"
    t.integer  "assessment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "questions", ["assessment_id"], name: "index_questions_on_assessment_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.string   "heading"
    t.string   "intro"
    t.integer  "assessment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  add_index "surveys", ["assessment_id"], name: "index_surveys_on_assessment_id", using: :btree
  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  add_foreign_key "completed_surveys", "surveys"
  add_foreign_key "evaluations", "completed_surveys"
  add_foreign_key "evaluations", "questions"
  add_foreign_key "questions", "assessments"
  add_foreign_key "surveys", "assessments"
  add_foreign_key "surveys", "users"
end
