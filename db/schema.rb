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

ActiveRecord::Schema.define(version: 20140703025310) do

  create_table "employees", force: true do |t|
    t.string   "name"
    t.boolean  "at_work"
    t.decimal  "working_hours",  precision: 3, scale: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "breaks",         precision: 3, scale: 1
    t.decimal  "huddle",         precision: 3, scale: 1
    t.decimal  "one_on_ones",    precision: 3, scale: 1
    t.decimal  "team_meetings",  precision: 3, scale: 1
    t.decimal  "other",          precision: 3, scale: 1
    t.decimal  "other_meetings", precision: 3, scale: 1
    t.decimal  "training",       precision: 3, scale: 1
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
