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

ActiveRecord::Schema.define(:version => 20130829154547) do

  create_table "analyses", :force => true do |t|
    t.string   "file"
    t.string   "analysis_type"
    t.string   "comment"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "cell_id"
  end

  create_table "cells", :force => true do |t|
    t.integer  "channel"
    t.string   "cell_type"
    t.string   "brain_area"
    t.string   "layer"
    t.string   "intracellular"
    t.decimal  "pipette_offset"
    t.decimal  "pipette_resistance"
    t.integer  "depth"
    t.decimal  "temparature"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "mouse_id"
    t.string   "experiment_number"
    t.text     "comment"
  end

  create_table "mice", :force => true do |t|
    t.datetime "date_of_birth"
    t.string   "sex"
    t.string   "species_strain"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "cage_number"
    t.integer  "user_id"
    t.integer  "number"
    t.text     "comment"
  end

  create_table "surgeries", :force => true do |t|
    t.date     "operation_date"
    t.string   "location"
    t.float    "amount_in_ul"
    t.float    "titer"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "mouse_id"
    t.string   "surgery_type"
    t.string   "drug_application"
    t.decimal  "weight"
    t.text     "comment"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
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
