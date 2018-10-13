ActiveRecord::Schema.define(version: 20181013025626) do

  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
  end

end
