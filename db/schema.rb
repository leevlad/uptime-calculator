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

ActiveRecord::Schema.define(version: 20161219222641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.datetime "incident_time",       null: false
    t.datetime "detection_time",      null: false
    t.datetime "resolution_time",     null: false
    t.datetime "closed_time",         null: false
    t.text     "summary"
    t.string   "method_of_detection"
    t.integer  "severity",            null: false
    t.string   "source_of_incident"
    t.text     "symptoms"
    t.integer  "faulted_service_id",  null: false
    t.text     "resolution",          null: false
    t.text     "follow_ups"
    t.string   "contact_people"
    t.text     "tags"
    t.text     "hosts"
    t.string   "task_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "reviewed"
  end

  create_table "resiliency_matrix", force: :cascade do |t|
    t.integer "service_id"
    t.integer "feature_id"
    t.integer "severity"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
