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

ActiveRecord::Schema.define(version: 2020_08_02_003844) do

  create_table "authors", force: :cascade do |t|
    t.string "nombre"
    t.string "nacionalidad"
    t.string "idioma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "ganancias_anuales"
  end

  create_table "books", force: :cascade do |t|
    t.string "titulo"
    t.string "idioma"
    t.integer "paginas"
    t.string "descripcion"
    t.integer "author_id", null: false
    t.integer "category_id", null: false
    t.integer "editorial_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["category_id"], name: "index_books_on_category_id"
    t.index ["editorial_id"], name: "index_books_on_editorial_id"
  end

  create_table "borrowings", force: :cascade do |t|
    t.date "fecha_salida"
    t.date "fecha_entrada"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_borrowings_on_book_id"
    t.index ["user_id"], name: "index_borrowings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "categoria"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "editorials", force: :cascade do |t|
    t.string "nombre"
    t.string "pais"
    t.string "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "telefono"
    t.string "direccion"
    t.string "observaciones"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "edad"
  end

  add_foreign_key "books", "authors"
  add_foreign_key "books", "categories"
  add_foreign_key "books", "editorials"
  add_foreign_key "borrowings", "books"
  add_foreign_key "borrowings", "users"
end
