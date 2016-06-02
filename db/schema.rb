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

ActiveRecord::Schema.define(version: 20160602222308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.integer  "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_actions_on_card_id", using: :btree
  end

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "state"
    t.boolean  "private?"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hands", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "card_id"
    t.text     "actions",    default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["card_id"], name: "index_hands_on_card_id", using: :btree
    t.index ["game_id"], name: "index_hands_on_game_id", using: :btree
    t.index ["player_id"], name: "index_hands_on_player_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "actions", "cards"
  add_foreign_key "hands", "cards"
  add_foreign_key "hands", "games"
  add_foreign_key "hands", "players"
end
