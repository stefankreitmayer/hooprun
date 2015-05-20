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

ActiveRecord::Schema.define(version: 20150520081631) do

  create_table "jumps", force: :cascade do |t|
    t.integer  "run_id",      null: false
    t.integer  "obstacle_id", null: false
    t.string   "choice"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jumps", ["obstacle_id"], name: "index_jumps_on_obstacle_id"
  add_index "jumps", ["run_id"], name: "index_jumps_on_run_id"

  create_table "obstacles", force: :cascade do |t|
    t.text     "question",       null: false
    t.text     "options_string", null: false
    t.string   "correct_option", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "runs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
