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

ActiveRecord::Schema.define(version: 20140202153544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "groups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number"
    t.string   "block"
  end

  create_table "invitations", force: true do |t|
    t.integer  "sender_id"
    t.string   "recipient_email"
    t.string   "token"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.integer  "role_id"
  end

  add_index "invitations", ["group_id"], name: "index_invitations_on_group_id", using: :btree
  add_index "invitations", ["role_id"], name: "index_invitations_on_role_id", using: :btree

  create_table "problems", force: true do |t|
    t.string   "title"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0
    t.integer  "user_id"
  end

  add_index "problems", ["user_id"], name: "index_problems_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "progress_rate"
    t.date     "started_at"
    t.date     "dead_line_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0
    t.integer  "user_id"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.integer  "invitation_id"
    t.integer  "role_id"
    t.string   "username"
  end

  add_index "users", ["group_id"], name: "index_users_on_group_id", using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "votes", force: true do |t|
    t.integer  "value"
    t.integer  "votable_id"
    t.string   "votable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  add_index "votes", ["group_id"], name: "index_votes_on_group_id", using: :btree
  add_index "votes", ["votable_id", "votable_type"], name: "index_votes_on_votable_id_and_votable_type", using: :btree

end
