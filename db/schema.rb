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

ActiveRecord::Schema.define(version: 20180317033823) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.string "armortype"
    t.integer "armorac"
    t.integer "armorstr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "encounters", force: :cascade do |t|
    t.integer "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "girdings", force: :cascade do |t|
    t.integer "armor_id"
    t.integer "pc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobs", force: :cascade do |t|
    t.string "name"
    t.integer "encounter_id"
    t.integer "weapon_id"
    t.integer "armor_id"
    t.integer "initiative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hp"
  end

  create_table "pcs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "str"
    t.integer "strmod"
    t.integer "dex"
    t.integer "dexmod"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.boolean "shield"
    t.integer "ac"
    t.integer "initiative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "quests", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "pc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.boolean "simple"
    t.boolean "ranged"
    t.integer "mindamage"
    t.string "maxdamage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wieldings", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "pc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
