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

ActiveRecord::Schema.define(version: 2019_04_18_003217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "category_id"
    t.bigint "member_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price", precision: 10, scale: 2
    t.index ["category_id"], name: "index_ads_on_category_id"
    t.index ["member_id"], name: "index_ads_on_member_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "description", limit: 60
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "member_id"
    t.bigint "ad_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_comments_on_ad_id"
    t.index ["member_id"], name: "index_comments_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "birthday"
    t.string "sex"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_purchases_on_ad_id"
    t.index ["member_id"], name: "index_purchases_on_member_id"
  end

  create_table "views", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_views_on_ad_id"
    t.index ["member_id"], name: "index_views_on_member_id"
  end

  add_foreign_key "ads", "categories"
  add_foreign_key "ads", "members"
  add_foreign_key "comments", "ads"
  add_foreign_key "comments", "members"
  add_foreign_key "purchases", "ads"
  add_foreign_key "purchases", "members"
  add_foreign_key "views", "ads"
  add_foreign_key "views", "members"
end
