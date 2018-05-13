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

ActiveRecord::Schema.define(version: 20180502144552) do

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.string "start_time"
    t.string "end_time"
    t.integer "teacher_id"
    t.integer "limit"
    t.string "repeat_on"
    t.date "lesson_start_at"
    t.date "lesson_end_at"
    t.index ["teacher_id"], name: "index_lessons_on_teacher_id"
  end

  create_table "lessons_week_days", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "week_day_id"
    t.index ["lesson_id"], name: "index_lessons_week_days_on_lesson_id"
    t.index ["week_day_id"], name: "index_lessons_week_days_on_week_day_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
  end

  create_table "week_days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
