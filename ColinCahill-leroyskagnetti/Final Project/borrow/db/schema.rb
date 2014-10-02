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

ActiveRecord::Schema.define(version: 20141002015335) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "total_items"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "value"
    t.string   "image_path"
    t.string   "tags"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "user_id"
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"
  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "loans", force: true do |t|
    t.datetime "loan_begin"
    t.datetime "loan_end"
    t.integer  "borrower_score"
    t.integer  "lender_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "borrower_id"
    t.integer  "lender_id"
    t.integer  "item_id"
  end

  add_index "loans", ["borrower_id"], name: "index_loans_on_borrower_id"
  add_index "loans", ["item_id"], name: "index_loans_on_item_id"
  add_index "loans", ["lender_id"], name: "index_loans_on_lender_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.string   "country"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
