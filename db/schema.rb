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

ActiveRecord::Schema.define(version: 20150119190044) do

  create_table "messages", force: true do |t|
    t.text     "content"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "receivers", force: true do |t|
    t.string   "phonenumber"
    t.string   "private_key"
    t.string   "name"
    t.string   "sender_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "receiver_id"
    t.integer  "message_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["message_id"], name: "index_relationships_on_message_id"
  add_index "relationships", ["receiver_id"], name: "index_relationships_on_receiver_id"
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "confirmation_password"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "user_type"
    t.string   "public_key"
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
