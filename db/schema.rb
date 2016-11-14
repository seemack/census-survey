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

ActiveRecord::Schema.define(version: 20150220230754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "responses", force: :cascade do |t|
    t.string   "site"
    t.string   "responder"
    t.string   "role"
    t.string   "role_other"
    t.string   "geo_own"
    t.string   "geo_freq"
    t.string   "geo_burden"
    t.string   "geo_time"
    t.text     "geo_comment"
    t.boolean  "limit_control"
    t.boolean  "limit_cost"
    t.boolean  "limit_progtime"
    t.boolean  "limit_staff"
    t.boolean  "limit_timely"
    t.boolean  "limit_space"
    t.boolean  "limit_technical"
    t.boolean  "limit_uncodeable"
    t.boolean  "limit_proctime"
    t.text     "limit_comment"
    t.integer  "imp_simple_produce"
    t.integer  "imp_ses"
    t.integer  "imp_time_produce"
    t.integer  "imp_simple_use"
    t.integer  "imp_latlong"
    t.integer  "imp_time_use"
    t.integer  "imp_race"
    t.integer  "imp_historical"
    t.integer  "imp_housing"
    t.integer  "imp_timely"
    t.integer  "imp_moe"
    t.text     "imp_comment"
    t.string   "use_block"
    t.string   "use_blockgroup"
    t.string   "use_tract"
    t.string   "use_zcta"
    t.text     "use_comment"
    t.text     "general_comment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
