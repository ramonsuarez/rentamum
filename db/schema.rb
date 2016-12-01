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

ActiveRecord::Schema.define(version: 20161201134817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.boolean  "status"
    t.integer  "user_id"
    t.integer  "mother_listing_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["mother_listing_id"], name: "index_bookings_on_mother_listing_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "mother_listing_reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "mother_listing_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["mother_listing_id"], name: "index_mother_listing_reviews_on_mother_listing_id", using: :btree
    t.index ["user_id"], name: "index_mother_listing_reviews_on_user_id", using: :btree
  end

  create_table "mother_listings", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.text     "description"
    t.integer  "price"
    t.float    "average_rating"
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_mother_listings_on_user_id", using: :btree
  end

  create_table "mother_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "mother_listing_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["mother_listing_id"], name: "index_mother_skills_on_mother_listing_id", using: :btree
    t.index ["skill_id"], name: "index_mother_skills_on_skill_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "mother_listing_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["mother_listing_id"], name: "index_user_favorites_on_mother_listing_id", using: :btree
    t.index ["user_id"], name: "index_user_favorites_on_user_id", using: :btree
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "mother_listing_id"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["mother_listing_id"], name: "index_user_reviews_on_mother_listing_id", using: :btree
    t.index ["user_id"], name: "index_user_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "first_name",                           null: false
    t.string   "last_name",                            null: false
    t.string   "address"
    t.string   "payment_method"
    t.string   "phone"
    t.float    "average_rating",         default: 0.0
    t.text     "decription"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "mother_listings"
  add_foreign_key "bookings", "users"
  add_foreign_key "mother_listing_reviews", "mother_listings"
  add_foreign_key "mother_listing_reviews", "users"
  add_foreign_key "mother_listings", "users"
  add_foreign_key "mother_skills", "mother_listings"
  add_foreign_key "mother_skills", "skills"
  add_foreign_key "user_favorites", "mother_listings"
  add_foreign_key "user_favorites", "users"
  add_foreign_key "user_reviews", "mother_listings"
  add_foreign_key "user_reviews", "users"
end
