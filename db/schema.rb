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

ActiveRecord::Schema.define(version: 20170103034509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apprentices", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "project_repo"
    t.string   "project_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "aptitudes", force: :cascade do |t|
    t.integer  "teamwork"
    t.integer  "motivation"
    t.integer  "communication"
    t.integer  "energy"
    t.integer  "intelligence"
    t.integer  "problem_solving"
    t.integer  "apprentice_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["apprentice_id"], name: "index_aptitudes_on_apprentice_id", using: :btree
  end

  create_table "code_practices", force: :cascade do |t|
    t.integer  "OOP"
    t.integer  "modular_development"
    t.integer  "full_stack"
    t.integer  "testing"
    t.integer  "db_knowledge"
    t.integer  "apprentice_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["apprentice_id"], name: "index_code_practices_on_apprentice_id", using: :btree
  end

  create_table "language_ratings", force: :cascade do |t|
    t.integer  "javascript"
    t.integer  "html"
    t.integer  "css"
    t.integer  "apprentice_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["apprentice_id"], name: "index_language_ratings_on_apprentice_id", using: :btree
  end

  add_foreign_key "aptitudes", "apprentices"
  add_foreign_key "code_practices", "apprentices"
  add_foreign_key "language_ratings", "apprentices"
end
