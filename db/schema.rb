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

ActiveRecord::Schema.define(version: 2021_08_10_103519) do

  create_table "assets", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Asset"
    t.string "Asset_Number"
    t.string "Asset_Type"
    t.string "Unit_Price"
    t.string "Total_Amount"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_assets_on_user_id"
  end

  create_table "barn_and_slate_records", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "P_Barn_Number"
    t.string "Reap"
    t.string "P_Slate_NumberSlate_Weight"
    t.string "Barn_Weight"
    t.string "Cumulative_Barn_Weight"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_barn_and_slate_records_on_user_id"
  end

  create_table "cereal_stores", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Type"
    t.string "Input_Name"
    t.string "Quantity"
    t.string "Unit"
    t.string "Unit_Price"
    t.string "Total_Amount"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cereal_stores_on_user_id"
  end

  create_table "client_payments", force: :cascade do |t|
    t.string "Company_Name"
    t.string "Category"
    t.string "Receipt_Number"
    t.string "Amount_Paid"
    t.string "Balance"
    t.date "Date"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_client_payments_on_user_id"
  end

  create_table "curings", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Facility"
    t.datetime "Time"
    t.date "Day"
    t.string "Temperature"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_curings_on_user_id"
  end

  create_table "input_calibrations", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Crop"
    t.string "Variety"
    t.string "Fertiiliser_TypeFertiliser_Rate"
    t.string "Bags_Used"
    t.string "Herbicide"
    t.string "Herbicide_Rate"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_input_calibrations_on_user_id"
  end

  create_table "irriagtion_schedules", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Crop"
    t.string "Calibration"
    t.string "Mls"
    t.date "Start_Date"
    t.date "End_Date"
    t.string "turn_around_time"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_irriagtion_schedules_on_user_id"
  end

  create_table "land_names", force: :cascade do |t|
    t.string "Company_name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_nameSection"
    t.string "Hectrage"
    t.string "Crop"
    t.string "Pro_Number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mkt_payments", force: :cascade do |t|
    t.date "Date"
    t.string "Company_Name"
    t.string "Service_Rendered"
    t.string "Service"
    t.string "Amount_Paid"
    t.string "From"
    t.string "To"
    t.string "Receipt_Number"
    t.string "Paid_by"
    t.string "Pro_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seedbeds", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Item_Used"
    t.string "Quantity"
    t.string "Unit"
    t.string "Input_Amount"
    t.string "Labour_Amount"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_seedbeds_on_user_id"
  end

  create_table "set_seasons", force: :cascade do |t|
    t.date "Date"
    t.string "Season"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_set_seasons_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Type"
    t.string "Input_Name"
    t.string "Quantity"
    t.string "Unit"
    t.string "Unit_Price"
    t.string "Total_Amount"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "Status", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workshops", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Item"
    t.string "Quantity"
    t.string "Pro_Number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workshops_on_user_id"
  end

  add_foreign_key "assets", "users"
  add_foreign_key "barn_and_slate_records", "users"
  add_foreign_key "cereal_stores", "users"
  add_foreign_key "client_payments", "users"
  add_foreign_key "curings", "users"
  add_foreign_key "input_calibrations", "users"
  add_foreign_key "irriagtion_schedules", "users"
  add_foreign_key "seedbeds", "users"
  add_foreign_key "set_seasons", "users"
  add_foreign_key "stores", "users"
  add_foreign_key "workshops", "users"
end
