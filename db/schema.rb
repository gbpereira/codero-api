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

ActiveRecord::Schema.define(version: 20161009225351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.integer  "creator_id"
    t.integer  "recipient_id"
    t.date     "due_date"
    t.decimal  "value"
    t.integer  "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "debts", force: :cascade do |t|
    t.integer  "bill_id"
    t.decimal  "value"
    t.integer  "debtor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_debts_on_bill_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "debt_id"
    t.date     "payment_date"
    t.decimal  "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["debt_id"], name: "index_payments_on_debt_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "nickname"
    t.string   "password"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "payments", "debts"
end
