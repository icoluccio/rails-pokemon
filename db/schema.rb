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

ActiveRecord::Schema.define(version: 2018_11_06_234451) do

  create_table "ataques", force: :cascade do |t|
    t.string "type"
    t.integer "pokemon_id"
    t.index ["pokemon_id"], name: "index_ataques_on_pokemon_id"
  end

  create_table "batallas", force: :cascade do |t|
    t.integer "entrenador1_id"
    t.integer "entrenador2_id"
    t.index ["entrenador1_id"], name: "index_batallas_on_entrenador1_id"
    t.index ["entrenador2_id"], name: "index_batallas_on_entrenador2_id"
  end

  create_table "entrenadors", force: :cascade do |t|
    t.string "nombre"
  end

  create_table "estados", force: :cascade do |t|
    t.integer "pokemon_id"
    t.string "type"
    t.index ["pokemon_id"], name: "index_estados_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "vida", default: 0
    t.integer "ataque", default: 0
    t.integer "defensa", default: 0
    t.integer "velocidad", default: 0
  end

end
