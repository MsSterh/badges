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

ActiveRecord::Schema.define(version: 20151228110336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "item_id"
  end

  add_index "collections", ["item_id"], name: "index_collections_on_item_id", using: :btree

  create_table "collections_users", id: false, force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "collection_id", null: false
    t.string  "status"
  end

  add_index "collections_users", ["collection_id"], name: "index_collections_users_on_collection_id", using: :btree
  add_index "collections_users", ["user_id"], name: "index_collections_users_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_users", id: false, force: :cascade do |t|
    t.integer "user_id",             null: false
    t.integer "item_id",             null: false
    t.integer "count",   default: 0
  end

  add_index "items_users", ["item_id"], name: "index_items_users_on_item_id", using: :btree
  add_index "items_users", ["user_id"], name: "index_items_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "collections", "items"
end
