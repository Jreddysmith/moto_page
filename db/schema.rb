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

ActiveRecord::Schema.define(version: 20160729152723) do

  create_table "diet_votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "nutrition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diet_votes", ["nutrition_id"], name: "index_diet_votes_on_nutrition_id"
  add_index "diet_votes", ["user_id"], name: "index_diet_votes_on_user_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.date     "date"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "flashbacks", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "flashbacks", ["user_id"], name: "index_flashbacks_on_user_id"

  create_table "garages", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "garages", ["user_id"], name: "index_garages_on_user_id"

  create_table "nutrition_votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "nutrition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nutrition_votes", ["nutrition_id"], name: "index_nutrition_votes_on_nutrition_id"
  add_index "nutrition_votes", ["user_id"], name: "index_nutrition_votes_on_user_id"

  create_table "nutritions", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vote",                 default: 0
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "nutritions", ["user_id"], name: "index_nutritions_on_user_id"

  create_table "sponsors", force: true do |t|
    t.string   "title"
    t.string   "name"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "sponsors", ["user_id"], name: "index_sponsors_on_user_id"

  create_table "toytracks", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "toytracks", ["user_id"], name: "index_toytracks_on_user_id"

  create_table "training_votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "training_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "training_votes", ["training_id"], name: "index_training_votes_on_training_id"
  add_index "training_votes", ["user_id"], name: "index_training_votes_on_user_id"

  create_table "trainings", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vote",                 default: 0
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "trainings", ["user_id"], name: "index_trainings_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "state"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yardsales", force: true do |t|
    t.string   "title"
    t.string   "city"
    t.string   "state"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "yardsales", ["user_id"], name: "index_yardsales_on_user_id"

end
