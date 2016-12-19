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

ActiveRecord::Schema.define(version: 20161219164840) do

  create_table "incidents", force: :cascade do |t|
    t.datetime "incident_time"
    t.datetime "detection_time"
    t.datetime "resolution_time"
    t.datetime "closed_time"
    t.text     "summary"
    t.string   "method_of_detection"
    t.integer  "severity"
    t.string   "source_of_incident"
    t.text     "symptoms"
    t.integer  "faulted_service"
    t.text     "resolution"
    t.text     "follow_ups"
    t.string   "contact_people"
    t.text     "tags"
    t.text     "hosts"
    t.string   "task_url"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
  end

end
