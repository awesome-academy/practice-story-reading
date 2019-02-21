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

ActiveRecord::Schema.define(version: 2019_02_21_040951) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.text "content"
    t.integer "status"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id", "created_at"], name: "index_chapters_on_story_id_and_created_at"
    t.index ["story_id"], name: "index_chapters_on_story_id"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_comments_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "feedbacks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likeds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id", "created_at"], name: "index_likeds_on_story_id_and_created_at"
    t.index ["story_id"], name: "index_likeds_on_story_id"
    t.index ["user_id", "created_at"], name: "index_likeds_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_likeds_on_user_id"
  end

  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.text "description"
    t.string "author"
    t.integer "process"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_stories_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "story_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id", "created_at"], name: "index_story_categories_on_category_id_and_created_at"
    t.index ["category_id"], name: "index_story_categories_on_category_id"
    t.index ["story_id", "created_at"], name: "index_story_categories_on_story_id_and_created_at"
    t.index ["story_id"], name: "index_story_categories_on_story_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "account"
    t.string "email"
    t.integer "status"
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["permission_id", "created_at"], name: "index_users_on_permission_id_and_created_at"
    t.index ["permission_id"], name: "index_users_on_permission_id"
  end

  add_foreign_key "chapters", "stories"
  add_foreign_key "comments", "users"
  add_foreign_key "likeds", "stories"
  add_foreign_key "likeds", "users"
  add_foreign_key "stories", "users"
  add_foreign_key "story_categories", "categories"
  add_foreign_key "story_categories", "stories"
  add_foreign_key "users", "permissions"
end
