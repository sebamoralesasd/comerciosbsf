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

ActiveRecord::Schema.define(version: 20_210_804_225_941) do
  create_table 'commerces', force: :cascade do |t|
    t.integer 'promo_id', null: false
    t.string 'name'
    t.string 'address_street'
    t.string 'address_number'
    t.string 'province'
    t.string 'city'
    t.string 'kind'
    t.string 'web'
    t.string 'latitude'
    t.string 'longitude'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['promo_id'], name: 'index_commerces_on_promo_id'
  end

  create_table 'promos', force: :cascade do |t|
    t.string 'value', null: false
    t.string 'date_range', null: false
    t.string 'days_available', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
