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

ActiveRecord::Schema.define(version: 2020_03_19_055418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "type"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_expenses_on_category_id"
  end

  create_table "expenses_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "expense_id", null: false
    t.index ["expense_id", "user_id"], name: "index_expenses_users_on_expense_id_and_user_id"
    t.index ["user_id", "expense_id"], name: "index_expenses_users_on_user_id_and_expense_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "categories_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categories_id"], name: "index_incomes_on_categories_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "login"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
  end

  add_foreign_key "incomes", "categories", column: "categories_id"
end
