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

ActiveRecord::Schema.define(version: 20140716202713) do

  create_table "pieces", force: true do |t|
    t.string   "title"
    t.string   "instrumentation"
    t.text     "notes"
    t.integer  "duration"
    t.date     "last_performed"
    t.date     "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pieces", ["duration"], name: "index_pieces_on_duration", using: :btree
  add_index "pieces", ["last_performed"], name: "index_pieces_on_last_performed", using: :btree
  add_index "pieces", ["title"], name: "index_pieces_on_title", unique: true, using: :btree

end
