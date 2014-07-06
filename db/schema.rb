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

ActiveRecord::Schema.define(version: 20140706145137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "franchises", force: true do |t|
    t.string "name"
  end

  create_table "matches", force: true do |t|
    t.integer "team_a_id"
    t.integer "team_b_id"
    t.string  "date"
    t.integer "result"
  end

  create_table "players", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "position"
    t.integer "number"
    t.string  "grade"
  end

  create_table "runs", force: true do |t|
    t.integer "player_id"
    t.integer "match_id"
    t.integer "singles"
    t.integer "doubles"
    t.integer "boundaries"
    t.integer "sixes"
    t.integer "total"
  end

  add_index "runs", ["match_id"], name: "index_runs_on_match_id", using: :btree
  add_index "runs", ["player_id"], name: "index_runs_on_player_id", using: :btree

  create_table "teams", force: true do |t|
    t.string  "name"
    t.integer "franchise_id"
  end

  add_index "teams", ["franchise_id"], name: "index_teams_on_franchise_id", using: :btree

end
