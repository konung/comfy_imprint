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

ActiveRecord::Schema.define(:version => 20130725201929) do

  create_table "comfy_imprint_contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "url"
    t.string   "company"
    t.boolean  "is_subscribed"
    t.text     "message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "comfy_imprint_contacts", ["email"], :name => "index_comfy_imprint_contacts_on_email"

  create_table "comfy_imprint_locations", :force => true do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "attn"
    t.string   "phone_main"
    t.string   "phone_additional"
    t.string   "fax"
    t.string   "email"
    t.string   "url"
    t.string   "map_link"
    t.string   "picture_link"
    t.text     "note"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
