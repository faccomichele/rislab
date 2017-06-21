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

ActiveRecord::Schema.define(version: 20170621112600) do

  create_table "actual_volumes", force: :cascade do |t|
    t.integer "template_volume_id"
    t.string "iscsiname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_volume_id"], name: "index_actual_volumes_on_template_volume_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "device_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.string "ip"
    t.string "mac"
    t.text "description"
    t.integer "device_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_type_id"], name: "index_devices_on_device_type_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "device_id"
    t.integer "template_volume_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["device_id"], name: "index_line_items_on_device_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["template_volume_id"], name: "index_line_items_on_template_volume_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "os_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_volumes", force: :cascade do |t|
    t.string "name"
    t.string "iscsiname"
    t.text "description"
    t.integer "os_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["os_type_id"], name: "index_template_volumes_on_os_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "administrator"
  end

end
