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

ActiveRecord::Schema.define(version: 20180204152739) do

  create_table "comments", force: :cascade do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "in_form_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["in_form_id"], name: "index_comments_on_in_form_id"
  end

  create_table "in_forms", force: :cascade do |t|
    t.string   "name"
    t.string   "rank"
    t.string   "num"
    t.string   "pl"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "in_form_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["in_form_id"], name: "index_responses_on_in_form_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.boolean  "admin"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
