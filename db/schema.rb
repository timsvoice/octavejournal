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

ActiveRecord::Schema.define(version: 20150225155817) do

  create_table "abilities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "article_translations", force: true do |t|
    t.integer  "article_id",   null: false
    t.string   "locale",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "introduction"
    t.text     "body"
  end

  add_index "article_translations", ["article_id"], name: "index_article_translations_on_article_id"
  add_index "article_translations", ["locale"], name: "index_article_translations_on_locale"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "introduction"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author_id"
    t.integer  "category_id"
    t.integer  "tag_id"
    t.string   "article_feature"
    t.text     "body",            limit: 255
    t.integer  "issue_id"
    t.string   "title_cn"
    t.string   "introduction_cn"
    t.string   "body_cn"
    t.boolean  "published",                   default: false
  end

  create_table "articles_issues", force: true do |t|
    t.integer "article_id"
    t.integer "issue_id"
  end

  create_table "articles_issues_tables", force: true do |t|
    t.integer "article_id"
    t.integer "issue_id"
  end

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "issue_translations", force: true do |t|
    t.integer  "issue_id",     null: false
    t.string   "locale",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "introduction"
    t.text     "summary"
  end

  add_index "issue_translations", ["issue_id"], name: "index_issue_translations_on_issue_id"
  add_index "issue_translations", ["locale"], name: "index_issue_translations_on_locale"

  create_table "issues", force: true do |t|
    t.string   "title"
    t.string   "feature_image"
    t.string   "introduction"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "issue_feature"
    t.integer  "article_id"
    t.string   "title_cn"
    t.string   "introduction_cn"
    t.string   "summary_cn"
    t.boolean  "published",       default: false
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
