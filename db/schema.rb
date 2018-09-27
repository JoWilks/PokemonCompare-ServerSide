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

ActiveRecord::Schema.define(version: 2018_09_27_161922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "poke_teams", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poke_teams_pokemons", id: false, force: :cascade do |t|
    t.integer "poke_team_id"
    t.integer "pokemon_id"
    t.index ["poke_team_id"], name: "index_poke_teams_pokemons_on_poke_team_id"
    t.index ["pokemon_id"], name: "index_poke_teams_pokemons_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "nickname"
    t.string "name"
    t.string "nature"
    t.string "stats"
    t.string "averagepokemonstats"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
