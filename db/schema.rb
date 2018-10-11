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

ActiveRecord::Schema.define(version: 2018_09_23_194622) do

  create_table "answers", force: :cascade do |t|
    t.text "answer"
    t.string "q_id"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.text "name"
    t.integer "c_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classposts", force: :cascade do |t|
    t.text "prof"
    t.text "source"
    t.text "comment"
    t.text "rate"
    t.text "grade"
    t.text "success"
    t.text "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_ps", force: :cascade do |t|
    t.text "comment"
    t.integer "c_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "a_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dislikes", force: :cascade do |t|
    t.integer "dislike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "like_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_cs", force: :cascade do |t|
    t.text "comment"
    t.integer "c_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "prof"
    t.text "sort"
    t.text "title"
    t.text "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
