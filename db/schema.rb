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

ActiveRecord::Schema.define(version: 20151217121241) do

  create_table "ads", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "phone_number"
    t.string   "zipcode"
    t.string   "house_image"
    t.string   "profile_image"
    t.string   "text_1"
    t.string   "text_2"
    t.integer  "design"
    t.string   "background_color_1", default: "#aaaaaa"
    t.string   "text_color_1",       default: "#222222"
    t.string   "background_color_2", default: "#cccccc"
    t.string   "text_color_2",       default: "#555555"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
