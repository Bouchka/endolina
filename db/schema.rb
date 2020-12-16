# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_16_112025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "box_products", force: :cascade do |t|
    t.integer "quantity"
    t.integer "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "box_id", null: false
    t.bigint "product_id", null: false
    t.index ["box_id"], name: "index_box_products_on_box_id"
    t.index ["product_id"], name: "index_box_products_on_product_id"
  end

  create_table "boxes", force: :cascade do |t|
    t.string "recurrent"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_boxes_on_user_id"
  end

  create_table "possible_answers", force: :cascade do |t|
    t.string "possible_answer_details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_id", null: false
    t.index ["question_id"], name: "index_possible_answers_on_question_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.string "product_price"
    t.string "product_picture"
    t.boolean "one_time_order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.string "solution_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "possible_answer_id", null: false
    t.bigint "product_id", null: false
    t.index ["possible_answer_id"], name: "index_solutions_on_possible_answer_id"
    t.index ["product_id"], name: "index_solutions_on_product_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "possible_answer_id", null: false
    t.bigint "user_id", null: false
    t.index ["possible_answer_id"], name: "index_user_answers_on_possible_answer_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "box_products", "boxes"
  add_foreign_key "box_products", "products"
  add_foreign_key "boxes", "users"
  add_foreign_key "possible_answers", "questions"
  add_foreign_key "solutions", "possible_answers"
  add_foreign_key "solutions", "products"
  add_foreign_key "user_answers", "possible_answers"
  add_foreign_key "user_answers", "users"
end
