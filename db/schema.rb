# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_220_507_170_907) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'phone_numbers', force: :cascade do |t|
    t.string 'phone', null: false
    t.float 'score', null: false
    t.string 'conclusion', null: false
    t.string 'dob', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.text 'relationship_with_owner_explanation'
    t.index ['conclusion'], name: 'index_phone_numbers_on_conclusion'
    t.index ['phone'], name: 'index_phone_numbers_on_phone', unique: true
    t.index ['score'], name: 'index_phone_numbers_on_score'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.text 'content'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end