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

ActiveRecord::Schema.define(version: 20140221181053) do

  create_table "places", force: true do |t|
    t.string   "address"
    t.string   "description"
    t.decimal  "eta"
    t.integer  "rent_per_month"
    t.integer  "bedrooms"
    t.date     "available"
    t.text     "additional"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "student"
    t.string   "photo"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "max_ammount_per_month"
    t.integer  "credit_score"
    t.string   "grade"
    t.integer  "max_amount_per_month"
  end

  add_index "places", ["user_id"], name: "index_places_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["name"], name: "index_users_on_name"

end
