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

ActiveRecord::Schema.define(version: 20140102191251) do

  create_table "my_diamonds", force: true do |t|
    t.decimal  "price",       precision: 14, scale: 2
    t.decimal  "carat",       precision: 8,  scale: 2
    t.string   "shape"
    t.integer  "template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "min_color"
    t.string   "min_cut"
    t.string   "min_clarity"
    t.string   "min_polish"
    t.string   "min_symmetry"
    t.string   "min_flour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
