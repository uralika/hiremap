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

ActiveRecord::Schema.define(version: 20140222032115) do

  create_table "startup_jobs", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "salary_min"
    t.integer  "salary_max"
    t.decimal  "equity_min"
    t.decimal  "equity_max"
    t.string   "angellist_url"
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "startup_jobs", ["startup_id"], name: "index_startup_jobs_on_startup_id"

  create_table "startup_offices", force: true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state_code"
    t.string   "country_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "angellist_url"
    t.integer  "quality"
    t.text     "product_desc"
    t.string   "funding"
    t.string   "company_url"
    t.string   "logo_url"
    t.integer  "jobs_count",    default: 0
  end

end
