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

ActiveRecord::Schema.define(version: 2021_08_02_014439) do

  create_table "skills", force: :cascade do |t|
    t.string "name", limit: 64, null: false
    t.text "desc"
    t.json "spec"
    t.integer "status", limit: 1, default: 1
    t.integer "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "skill_id", null: false
    t.integer "rate", limit: 2
    t.integer "price", limit: 2
    t.index ["skill_id", "user_id"], name: "index_skills_users_on_skill_id_and_user_id"
    t.index ["user_id", "skill_id"], name: "index_skills_users_on_user_id_and_skill_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.string "email", limit: 256, null: false
    t.string "cc", limit: 4, default: "65"
    t.string "tel", limit: 12
    t.integer "status", limit: 1, default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
