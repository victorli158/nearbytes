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

ActiveRecord::Schema.define(version: 20170518234258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.integer  "restaurant_id", null: false
    t.string   "url",           null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_pictures_on_restaurant_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.string   "price",      null: false
    t.float    "lat",        null: false
    t.float    "long",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone",      null: false
    t.string   "mon",        null: false
    t.string   "tue",        null: false
    t.string   "wed",        null: false
    t.string   "thu",        null: false
    t.string   "fri",        null: false
    t.string   "sat",        null: false
    t.string   "sun",        null: false
    t.string   "categories", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "body",          null: false
    t.integer  "rating",        null: false
    t.integer  "user_id",       null: false
    t.integer  "restaurant_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
