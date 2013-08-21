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

ActiveRecord::Schema.define(:version => 20130821005106) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "country"
    t.string   "name"
    t.string   "last_name"
    t.string   "company"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "categories", :force => true do |t|
    t.string   "nombre"
    t.string   "referencia"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["admin_id"], :name => "index_categories_on_admin_id"

  create_table "companies", :force => true do |t|
    t.string   "nombre"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "companies", ["admin_id"], :name => "index_companies_on_admin_id"

  create_table "customers", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "telefono2"
    t.string   "email"
    t.string   "ciudad"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "customers", ["admin_id"], :name => "index_customers_on_admin_id"

  create_table "products", :force => true do |t|
    t.string   "referencia_externa"
    t.string   "referencia_interna"
    t.string   "nombre"
    t.string   "imagen"
    t.string   "color"
    t.string   "talla"
    t.decimal  "precio_publico"
    t.decimal  "precio_mayorista"
    t.decimal  "precio_especial"
    t.integer  "admin_id"
    t.integer  "category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.text     "ficha_tecnica"
  end

  add_index "products", ["admin_id"], :name => "index_products_on_admin_id"
  add_index "products", ["category_id"], :name => "index_products_on_category_id"

  create_table "tasks", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "admin_id"
    t.datetime "fecha_inicia"
    t.datetime "fecha_final"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "tasks", ["admin_id"], :name => "index_tasks_on_admin_id"
  add_index "tasks", ["user_id"], :name => "index_tasks_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "country"
    t.string   "name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.string   "job_title"
    t.integer  "admin_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
