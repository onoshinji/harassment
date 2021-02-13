
ActiveRecord::Schema.define(version: 2021_02_12_052749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.string "kind", null: false
    t.integer "guilty", default: 0, null: false
    t.integer "not_guilty", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
