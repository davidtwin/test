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

ActiveRecord::Schema.define(version: 2018_10_31_133229) do

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "account_name"
    t.string "company_name"
    t.string "first_name"
    t.string "surname_name"
    t.string "address"
    t.string "postcode"
    t.string "telephone_number"
    t.string "mobile_number"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_notes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "water_id"
    t.bigint "customer_id"
    t.string "delivery_number"
    t.string "item"
    t.string "quantity"
    t.string "purchase_order"
    t.string "date_ordered"
    t.string "date_due"
    t.string "date_date"
    t.string "delivered"
    t.string "time_delivered"
    t.string "notes"
    t.string "driver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_delivery_notes_on_customer_id"
    t.index ["water_id"], name: "index_delivery_notes_on_water_id"
  end

  create_table "waters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "address"
    t.string "postcode"
    t.string "telephone_number"
    t.string "mobile_number"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_waters_on_customer_id"
  end

  add_foreign_key "delivery_notes", "customers"
  add_foreign_key "delivery_notes", "waters"
  add_foreign_key "waters", "customers"
end
