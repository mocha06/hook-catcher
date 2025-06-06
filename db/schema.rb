# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_04_22_060358) do
  create_table "webhook_bins", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_webhook_bins_on_token", unique: true
  end

  create_table "webhook_requests", force: :cascade do |t|
    t.string "webhook_bin_id", null: false
    t.json "headers"
    t.json "body"
    t.string "method"
    t.string "path"
    t.string "query_string"
    t.string "remote_ip"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "received_at"
    t.index ["webhook_bin_id"], name: "index_webhook_requests_on_webhook_bin_id"
  end

  add_foreign_key "webhook_requests", "webhook_bins"
end
