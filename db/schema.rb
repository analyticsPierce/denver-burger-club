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

ActiveRecord::Schema.define(version: 20160604174142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "judges", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_addr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "full_name"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "site"
    t.string   "phone_number"
    t.text     "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email_addr"
    t.date     "review_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "slug"
    t.decimal  "avg_bun"
    t.decimal  "avg_meat_done"
    t.decimal  "avg_meat_flavor"
    t.decimal  "avg_toppings"
    t.decimal  "avg_sides"
    t.decimal  "avg_presentation"
    t.decimal  "avg_service"
    t.decimal  "avg_atmosphere"
    t.decimal  "avg_overall"
  end

  add_index "restaurants", ["slug"], name: "index_restaurants_on_slug", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "meat_flavor"
    t.integer  "meat_done"
    t.integer  "bun"
    t.integer  "toppings"
    t.integer  "sides"
    t.integer  "presentation"
    t.integer  "service"
    t.integer  "atmosphere"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "comment"
    t.integer  "restaurant_id"
    t.integer  "judge_id"
  end

  add_index "reviews", ["judge_id"], name: "index_reviews_on_judge_id", using: :btree
  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree

end
