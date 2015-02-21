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
    t.string   "site",                          null: false
    t.string   "responder",                     null: false
    t.text     "census_boundary"
    t.string   "acs_single_build"
    t.text     "acs_single_build_comment"
    t.string   "acs_build_volunteer"
    t.text     "acs_build_volunteer_comment"
    t.string   "acs_qa_volunteer"
    t.text     "acs_qa_volunteer_comment"
    t.string   "acs_multiple_files"
    t.text     "acs_multiple_files_comment"
    t.string   "acs_annual_files"
    t.text     "acs_annual_files_comment"
    t.string   "acs_block_group"
    t.text     "acs_block_group_comment"
    t.string   "census_needed"
    t.text     "census_needed_comment"
    t.string   "census_historical"
    t.text     "census_historical_comment"
    t.string   "census_future_history"
    t.text     "census_future_history_comment"
    t.text     "general_comments"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
