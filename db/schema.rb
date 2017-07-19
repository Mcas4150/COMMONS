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

ActiveRecord::Schema.define(version: 20170719175202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.datetime "datetime"
    t.string   "description"
    t.boolean  "public"
    t.integer  "admission"
    t.integer  "space_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "from"
    t.date     "to"
    t.index ["space_id"], name: "index_events_on_space_id", using: :btree
  end

  create_table "flats", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviewevents", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_reviewevents_on_event_id", using: :btree
    t.index ["user_id"], name: "index_reviewevents_on_user_id", using: :btree
  end

  create_table "reviewspaces", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "space_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_reviewspaces_on_space_id", using: :btree
    t.index ["user_id"], name: "index_reviewspaces_on_user_id", using: :btree
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "category"
    t.integer  "capacity"
    t.string   "images"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "address"
    t.string   "noise"
    t.index ["user_id"], name: "index_spaces_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "events", "spaces"
  add_foreign_key "reviewevents", "events"
  add_foreign_key "reviewevents", "users"
  add_foreign_key "reviewspaces", "spaces"
  add_foreign_key "reviewspaces", "users"
  add_foreign_key "spaces", "users"
end
