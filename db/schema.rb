
ActiveRecord::Schema.define(version: 2020_05_02_152742) do

  create_table "properties", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rent", null: false
    t.string "address", null: false
    t.integer "age"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "route_name"
    t.string "station_name"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "property_id"
    t.index ["property_id"], name: "index_stations_on_property_id"
  end

end
