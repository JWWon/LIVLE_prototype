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

ActiveRecord::Schema.define(version: 20170607181835) do

  create_table "artists", force: :cascade do |t|
    t.string "artist"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.string "stage_token"
    t.string "title"
    t.string "artist"
    t.string "user_id"
    t.boolean "is_youtube"
    t.string "video_url"
    t.integer "count_like"
    t.integer "count_view"
    t.integer "count_share"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stage_token"], name: "index_stages_on_stage_token", unique: true
  end

  create_table "upcomings", force: :cascade do |t|
    t.string "upcoming_token"
    t.string "title"
    t.string "artist"
    t.boolean "is_youtube"
    t.string "video_url"
    t.date "d_day"
    t.string "place"
    t.string "ticket_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["upcoming_token"], name: "index_upcomings_on_upcoming_token", unique: true
  end

end
