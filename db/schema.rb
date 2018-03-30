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

ActiveRecord::Schema.define(:version => 20180330074646) do

  create_table "information", :force => true do |t|
    t.string   "name",            :null => false
    t.integer  "school_number"
    t.string   "birthday"
    t.string   "area"
    t.string   "marriage"
    t.string   "economic"
    t.integer  "height"
    t.integer  "weight"
    t.string   "censuc_register"
    t.integer  "tell_phone"
    t.binary   "email"
    t.integer  "QQ"
    t.integer  "fixed_phone"
    t.string   "address"
    t.integer  "zip_code"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id",         :null => false
  end

  create_table "resumes", :force => true do |t|
    t.string   "resume_name"
    t.string   "name"
    t.string   "profession"
    t.string   "birthplace"
    t.string   "area"
    t.string   "sex"
    t.integer  "birthday_year"
    t.string   "education"
    t.string   "marriage"
    t.integer  "height"
    t.string   "work_experience"
    t.string   "form"
    t.string   "job"
    t.string   "salary"
    t.integer  "phone"
    t.integer  "QQ"
    t.string   "email"
    t.string   "blog"
    t.string   "address"
    t.text     "value"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
