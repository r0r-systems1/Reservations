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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130408052236) do

  create_table "attendee_eas_types", :force => true do |t|
    t.integer  "eas_types_id", :null => false
    t.integer  "attendee_id",  :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "age"
    t.string   "gender"
    t.string   "fname"
    t.string   "lname"
    t.string   "eck_id"
    t.string   "address"
    t.string   "state"
    t.string   "country"
    t.string   "contact"
    t.string   "designation"
    t.integer  "donation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "eas_types", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "early",      :null => false
    t.integer  "normal",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "quantity",   :default => 1
  end

  create_table "names", :force => true do |t|
    t.string   "name"
    t.string   "eck_id"
    t.integer  "age"
    t.integer  "seminar"
    t.integer  "hi_conf"
    t.integer  "YF_campout"
    t.integer  "total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payment_details", :force => true do |t|
    t.string   "address"
    t.string   "suburb"
    t.string   "state"
    t.string   "pcode"
    t.string   "country"
    t.string   "email"
    t.string   "pay_by"
    t.string   "card_number"
    t.string   "expiry_date"
    t.string   "Name_on_Card"
    t.integer  "Donation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title",       :null => false
    t.string   "event_type",  :null => false
    t.string   "initiate",    :null => false
    t.date     "event_date"
    t.integer  "num_days"
    t.time     "event_time"
    t.text     "description", :null => false
    t.integer  "image_id"
    t.string   "venue",       :null => false
    t.string   "address",     :null => false
    t.string   "contact",     :null => false
    t.text     "quote"
    t.text     "quote_ref"
    t.string   "quote_auth"
    t.integer  "adult_price"
    t.integer  "pens_price"
    t.integer  "fam_price"
    t.integer  "youth_price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
