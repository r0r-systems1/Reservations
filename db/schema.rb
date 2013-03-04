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

ActiveRecord::Schema.define(:version => 20130101025042) do

  create_table "attendee_eas_types", :force => true do |t|
    t.integer  "eas_types_id", :null => false
    t.integer  "attendee_id",  :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "attendees", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "eck_id",     :null => false
    t.string   "phone",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "attndcats", :force => true do |t|
    t.integer  "attendee_id", :null => false
    t.integer  "eas_type",    :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payments", :force => true do |t|
    t.string   "name",         :limit => 35, :null => false
    t.string   "address",      :limit => 60, :null => false
    t.string   "locality",     :limit => 25, :null => false
    t.string   "state",        :limit => 5,  :null => false
    t.string   "country",      :limit => 25, :null => false
    t.string   "postcode",     :limit => 7,  :null => false
    t.string   "phone",        :limit => 16, :null => false
    t.integer  "paymt_amount", :limit => 2,  :null => false
    t.string   "paymt_type",   :limit => 20, :null => false
    t.string   "paymt_number", :limit => 35, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "payments", ["name"], :name => "index_payments_on_name"
  add_index "payments", ["state"], :name => "index_payments_on_state"

  create_table "products", :force => true do |t|
    t.string   "title",                                     :null => false
    t.text     "description",                               :null => false
    t.string   "image_url",                                 :null => false
    t.decimal  "price",       :precision => 8, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

end
