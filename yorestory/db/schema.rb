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

ActiveRecord::Schema.define(version: 20140520185319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "milestones", force: true do |t|
    t.integer  "timeline_id"
    t.integer  "year_id"
    t.integer  "year_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timelines", force: true do |t|
    t.integer  "begin_date"
    t.integer  "end_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.integer  "year_name"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hashed_password"
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "years", force: true do |t|
    t.string   "headline"
    t.string   "weather"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "event_1"
    t.string   "event_2"
    t.string   "event_3"
    t.string   "event_4"
    t.string   "event_5"
    t.string   "title"
    t.integer  "year_name"
  end

end
