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

ActiveRecord::Schema.define(version: 20150922142639) do

  create_table "artists", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.text     "short_desc",     limit: 65535
    t.text     "desc",           limit: 65535
    t.integer  "artworks_count", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "en_name",        limit: 255
    t.text     "en_desc",        limit: 65535
    t.text     "en_short_desc",  limit: 65535
    t.string   "avatar",         limit: 255
    t.integer  "weight",         limit: 4
    t.string   "name_initial",   limit: 255
  end

  create_table "artworks", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "desc",       limit: 65535
    t.integer  "artist_id",  limit: 4
    t.text     "images",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
    t.string   "address",    limit: 255
    t.string   "location",   limit: 255
    t.boolean  "enabled",    limit: 1
    t.boolean  "hot",        limit: 1
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "bookmarkable_id",   limit: 4
    t.string   "bookmarkable_type", limit: 255
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "channels", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "en_name",        limit: 255
    t.string   "image",          limit: 255
    t.boolean  "enabled",        limit: 1,   default: false
    t.integer  "moderator_id",   limit: 4
    t.integer  "artworks_count", limit: 4,   default: 0
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "channels_artworks", force: :cascade do |t|
    t.integer  "channel_id", limit: 4
    t.integer  "artwork_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.text     "content",          limit: 65535
    t.string   "commentable_type", limit: 255
    t.integer  "commentable_id",   limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "event_markers", force: :cascade do |t|
    t.integer  "x",          limit: 4
    t.integer  "y",          limit: 4
    t.string   "word",       limit: 255
    t.string   "link",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "event_id",   limit: 4
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "gallery",            limit: 255
    t.string   "artist_name",        limit: 255
    t.string   "address",            limit: 255
    t.decimal  "lng",                            precision: 10
    t.decimal  "lat",                            precision: 10
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.boolean  "enabled",            limit: 1,                  default: false
    t.boolean  "show_in_front_page", limit: 1
  end

  create_table "fund_raise_supports", force: :cascade do |t|
    t.integer  "fund_raise_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.integer  "amount",        limit: 4
    t.text     "message",       limit: 65535
    t.string   "status",        limit: 255
    t.string   "pay_method",    limit: 255
    t.string   "pay_bank",      limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "fund_raising_terms", force: :cascade do |t|
    t.integer  "fund_raising_id", limit: 4
    t.integer  "amount",          limit: 4
    t.text     "desc",            limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "fund_raisings", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "en_name",        limit: 255
    t.string   "image",          limit: 255
    t.integer  "moderator_id",   limit: 4
    t.integer  "user_id",        limit: 4
    t.integer  "target",         limit: 4
    t.integer  "current_raised", limit: 4
    t.datetime "begin_at"
    t.datetime "end_at"
    t.text     "story_content",  limit: 65535
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.boolean  "enabled",        limit: 1
    t.string   "story_title",    limit: 255
    t.boolean  "close",          limit: 1,     default: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "send_from_id", limit: 4
    t.integer  "send_to_id",   limit: 4
    t.text     "content",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status",         limit: 255
    t.integer  "user_id",        limit: 4
    t.integer  "artist_id",      limit: 4
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "product_id",     limit: 4
    t.string   "pay_method",     limit: 255
    t.decimal  "pay_amount",                   precision: 8, scale: 2
    t.string   "transaction_id", limit: 255
    t.string   "bank",           limit: 255
    t.datetime "paid_at"
    t.string   "ship_address",   limit: 255
    t.string   "contact_name",   limit: 255
    t.string   "contact_phone",  limit: 255
    t.text     "remark",         limit: 65535
    t.decimal  "price",                        precision: 8, scale: 2
  end

  create_table "products", force: :cascade do |t|
    t.decimal  "price",                        precision: 8, scale: 2
    t.integer  "artist_id",      limit: 4
    t.decimal  "preorder_price",               precision: 8, scale: 2
    t.text     "name",           limit: 65535
    t.text     "short_desc",     limit: 65535
    t.text     "desc",           limit: 65535
    t.text     "images",         limit: 65535
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.boolean  "enabled",        limit: 1,                             default: true
    t.string   "address",        limit: 255
    t.string   "en_name",        limit: 255
    t.string   "width",          limit: 255
    t.string   "height",         limit: 255
    t.string   "thickness",      limit: 255
    t.string   "date_back",      limit: 255
    t.string   "style",          limit: 255
    t.string   "material",       limit: 255
    t.integer  "position",       limit: 4
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,                           default: "",   null: false
    t.string   "encrypted_password",     limit: 255,                           default: "",   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,                             default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles",                  limit: 255
    t.boolean  "visible",                limit: 1,                             default: true
    t.string   "uuid",                   limit: 255
    t.string   "avatar",                 limit: 255
    t.decimal  "lng",                                  precision: 9, scale: 5
    t.decimal  "lat",                                  precision: 9, scale: 5
    t.string   "area",                   limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "nickname",               limit: 255
    t.text     "desc",                   limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
