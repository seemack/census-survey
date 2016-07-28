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

ActiveRecord::Schema.define(version: 20150220230754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "responses", force: :cascade do |t|
    t.string   "site",                   null: false
    t.string   "responder",              null: false
    t.string   "keep_location"
    t.string   "keep_location_years"
    t.string   "keep_location_able"
    t.text     "keep_location_comment"
    t.string   "keep_demog"
    t.string   "keep_demog_years"
    t.string   "keep_demog_able"
    t.text     "keep_demog_comment"
    t.string   "keep_shapefile"
    t.string   "keep_shapefile_years"
    t.string   "keep_shapefile_able"
    t.text     "keep_shapefile_comment"
    t.text     "general_comments"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
