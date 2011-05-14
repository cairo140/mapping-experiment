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

ActiveRecord::Schema.define(:version => 20110514182111) do

  create_table "clips", :force => true do |t|
    t.integer  "sound_id"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiment_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pair_prototypes", :force => true do |t|
    t.string   "name"
    t.integer  "left_sound_id"
    t.integer  "right_sound_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phase_prototypes", :force => true do |t|
    t.integer  "experiment_prototype_id"
    t.string   "program_type"
    t.integer  "program_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_prototypes", :force => true do |t|
    t.string   "program_type"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pair_prototype_id"
  end

  create_table "sounds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_program_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_program_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.text     "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end