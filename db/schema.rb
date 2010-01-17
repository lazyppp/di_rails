# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091223115536) do

  create_table "appearances", :force => true do |t|
    t.integer  "web_site_id"
    t.float    "height"
    t.float    "width"
    t.integer  "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "information_fragments", :force => true do |t|
    t.integer  "web_page_id"
    t.string   "image_url"
    t.string   "cache_path"
    t.string   "keywords"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.integer  "from_web_page_id"
    t.integer  "to_web_page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["from_web_page_id", "to_web_page_id"], :name => "index_links_on_from_web_page_id_and_to_web_page_id"

  create_table "web_pages", :force => true do |t|
    t.integer  "web_site_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "web_sites", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
