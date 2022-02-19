ActiveRecord::Schema[7.0].define(version: 2022_02_19_064452) do
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "email"
    t.string "mobile"
    t.string "phone"
    t.string "whatsapp"
    t.string "role"
    t.boolean "active"
    t.string "country"
    t.string "state"
    t.string "district"
    t.string "city"
    t.string "address"
    t.string "pincode"
    t.string "gender"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
