ActiveRecord::Schema.define(version: 2020_12_14_180709) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "publication_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
