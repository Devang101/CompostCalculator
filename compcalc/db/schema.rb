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

ActiveRecord::Schema.define(version: 20170305051438) do

  create_table "piles", primary_key: "pile_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "temp_log_id"
    t.integer "turn_log_id"
    t.float   "CN_ratio",    limit: 24
    t.index ["temp_log_id"], name: "fk_temp_logs", using: :btree
    t.index ["turn_log_id"], name: "fk_turn_logs", using: :btree
    t.index ["user_id"], name: "fk_user", using: :btree
  end

  create_table "temp_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "temperature"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "turn_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "password"
  end

  add_foreign_key "piles", "temp_logs", name: "fk_temp_logs", on_update: :cascade, on_delete: :cascade
  add_foreign_key "piles", "turn_logs", name: "fk_turn_logs", on_update: :cascade, on_delete: :cascade
  add_foreign_key "piles", "users", name: "fk_user", on_update: :cascade, on_delete: :cascade
end
