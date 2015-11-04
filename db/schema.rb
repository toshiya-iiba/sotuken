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

ActiveRecord::Schema.define(version: 20150929151558) do

  create_table "foods", force: :cascade do |t|
    t.integer  "f_id",       limit: 4
    t.string   "food_name",  limit: 255
    t.float    "food_value", limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "recipe_names", force: :cascade do |t|
    t.string   "recipe_name", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sweets", force: :cascade do |t|
    t.integer  "f_id",        limit: 4
    t.float    "sweetness",   limit: 24
    t.float    "coefficient", limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
