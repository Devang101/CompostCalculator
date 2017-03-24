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

ActiveRecord::Schema.define(version: 20170324154911) do

  create_table "piles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "user_id"
    t.text     "content",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "temp_log_id"
    t.integer  "turn_log_id"
    t.float    "CN_ratio",    limit: 24
    t.float    "volume",      limit: 24
    t.index ["temp_log_id"], name: "index_piles_on_temp_log_id", using: :btree
    t.index ["turn_log_id"], name: "index_piles_on_turn_log_id", using: :btree
    t.index ["user_id", "created_at"], name: "index_piles_on_user_id_and_created_at", using: :btree
    t.index ["user_id"], name: "index_piles_on_user_id", using: :btree
  end

  create_table "temp_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "temperature"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "turn_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "piles", "temp_logs"
  add_foreign_key "piles", "turn_logs"
  add_foreign_key "piles", "users"
end
