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

ActiveRecord::Schema.define(version: 2021_09_20_102357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company_name"
    t.date "date"
    t.string "season"
    t.string "farm_name"
    t.string "section"
    t.string "activity"
    t.string "pro_number"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "advertisements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company_name"
    t.string "date"
    t.string "item_type"
    t.string "item_name"
    t.string "unit"
    t.decimal "unit_price"
    t.decimal "vat"
    t.decimal "total_amount"
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

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
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "vat"
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
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_barn_and_slate_records_on_user_id"
  end

  create_table "calenders", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Month"
    t.string "Activity"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_calenders_on_user_id"
  end

  create_table "cash_requisitions", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Employee_Name"
    t.string "Amount_Requested"
    t.string "Amount_Issued"
    t.date "Pay_From"
    t.date "Pay_To"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cash_requisitions_on_user_id"
  end

  create_table "cashflows", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Month"
    t.string "Grower_Name"
    t.string "Hectrage"
    t.string "Operation"
    t.string "Unity"
    t.string "Input_Name"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "Unit_Price"
    t.decimal "quantity_per_hectre"
    t.decimal "Total_Amount"
    t.string "total_quantity"
    t.string "tian_ze_number"
    t.index ["user_id"], name: "index_cashflows_on_user_id"
  end

  create_table "cereal_sales", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Grower_Name"
    t.string "Truck_Number"
    t.string "Trailer_Number"
    t.string "Test_Density"
    t.string "External_Matter"
    t.string "Gross_Mass"
    t.string "Tare"
    t.string "Net_Mass"
    t.string "Price_Per_Tonne"
    t.string "Quantity"
    t.string "Amount_Paid"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "crop"
    t.index ["user_id"], name: "index_cereal_sales_on_user_id"
  end

  create_table "cereal_stores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cereal_name"
    t.string "company_name"
    t.date "date"
    t.string "season"
    t.string "farm_name"
    t.string "type"
    t.decimal "quantity"
    t.string "unit"
    t.decimal "unit_price"
    t.decimal "total_amount"
    t.string "pro_number"
    t.boolean "is_bought", default: false
    t.index ["user_id"], name: "index_cereal_stores_on_user_id"
  end

  create_table "client_payments", force: :cascade do |t|
    t.string "Company_Name"
    t.string "Category"
    t.string "Receipt_Number"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "amount_paid"
    t.decimal "balance"
    t.date "valid_from"
    t.date "valid_to"
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
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_curings_on_user_id"
  end

  create_table "daily_requisitions", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Requisition"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_daily_requisitions_on_user_id"
  end

  create_table "deduction_tables", force: :cascade do |t|
    t.string "Season"
    t.string "Month"
    t.string "Farm_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "allowance"
    t.decimal "payee"
    t.decimal "nssa"
    t.decimal "nec"
    t.decimal "cash_requests"
    t.string "employee_name"
    t.string "employee_number"
    t.string "other1_name"
    t.decimal "other1_amount"
    t.string "other2_name"
    t.decimal "other2_amount"
    t.string "other3_name"
    t.decimal "other3_amount"
    t.string "other4_name"
    t.decimal "other4_amount"
    t.string "other5_name"
    t.decimal "other5_amount"
    t.string "other6_name"
    t.decimal "other6_amount"
    t.string "other7_name"
    t.decimal "other7_amount"
    t.string "other8_name"
    t.decimal "other8_amount"
    t.string "other9_name"
    t.decimal "other9_amount"
    t.string "other10_name"
    t.decimal "other10_amount"
    t.date "month_starting"
    t.date "month_ending"
    t.float "total_amount"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Type"
    t.string "Delivered_by"
    t.string "Goods"
    t.string "Quantity"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "amount"
    t.index ["user_id"], name: "index_deliveries_on_user_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "company_name"
    t.string "farm_name"
    t.string "employee_name"
    t.string "employee_number"
    t.string "worker_status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "daily_rate"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "equipment_services", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Type"
    t.string "Equipment_Number"
    t.string "Service_Type"
    t.string "Done_By"
    t.string "Mileage"
    t.string "next_service_milaege"
    t.string "Job"
    t.string "Total_Amount"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_equipment_services_on_user_id"
  end

  create_table "field_days", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "place"
    t.time "Start_Time"
    t.string "focus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "harvestings", force: :cascade do |t|
    t.string "Compnay_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Crop"
    t.string "KGS_Done"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_harvestings_on_user_id"
  end

  create_table "input_calibrations", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Crop"
    t.string "Variety"
    t.string "Bags_Used"
    t.string "Herbicide"
    t.string "Herbicide_Rate"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fertiliser_rate"
    t.string "fertiliser_type"
    t.index ["user_id"], name: "index_input_calibrations_on_user_id"
  end

  create_table "input_stores_usages", force: :cascade do |t|
    t.string "company_name"
    t.string "season"
    t.date "date"
    t.string "farm_name"
    t.string "input_name"
    t.string "unit"
    t.string "total_amount"
    t.string "profile_number"
    t.boolean "deleted", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "types"
    t.decimal "quantity_used"
    t.index ["user_id"], name: "index_input_stores_usages_on_user_id"
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
    t.bigint "user_id", null: false
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
    t.string "section"
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

  create_table "purchases", force: :cascade do |t|
    t.string "company_name"
    t.date "date"
    t.string "season"
    t.string "item"
    t.string "unit"
    t.string "unit_price"
    t.string "total_items"
    t.string "total_amount"
    t.string "VAT"
    t.string "pro_number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "rainfalls", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Section"
    t.string "Mls_received"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rainfalls_on_user_id"
  end

  create_table "rationings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pro_number"
    t.date "date"
    t.string "season"
    t.string "farm_name"
    t.string "company_name"
    t.string "cereal_name"
    t.string "issued_to"
    t.decimal "price"
    t.decimal "kgs_issued"
    t.boolean "is_sold", default: false
    t.index ["user_id"], name: "index_rationings_on_user_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.string "company_name"
    t.date "date"
    t.string "season"
    t.string "company_paid"
    t.string "receipt_number"
    t.string "reason"
    t.string "amount_paid"
    t.string "pro_number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rentals_on_user_id"
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
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_seedbeds_on_user_id"
  end

  create_table "set_seasons", force: :cascade do |t|
    t.date "Date"
    t.string "Season"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_set_seasons_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "top_up"
    t.string "company_name"
    t.date "date"
    t.string "farm_name"
    t.string "input_name"
    t.decimal "quantity"
    t.string "unit"
    t.decimal "unit_price"
    t.decimal "total_amount"
    t.string "pro_number"
    t.string "season"
    t.string "types"
    t.decimal "top_up_unit_price"
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "timebooks", force: :cascade do |t|
    t.date "date"
    t.string "employee_name"
    t.string "employee_number"
    t.string "day"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "rate"
    t.decimal "gross"
    t.string "season"
    t.index ["user_id"], name: "index_timebooks_on_user_id"
  end

  create_table "tobacco_sales", force: :cascade do |t|
    t.string "season"
    t.date "date"
    t.string "grower_number"
    t.string "section"
    t.string "sale_number"
    t.string "bales_sold"
    t.string "mass"
    t.string "collect_bales"
    t.string "average_price"
    t.string "weighing_and_auction"
    t.string "afforestration"
    t.string "levy"
    t.string "stop_oder_commission"
    t.string "insurance_name"
    t.string "insurance_amount"
    t.string "bank_name"
    t.string "bank_amount"
    t.string "tianZe"
    t.string "balance"
    t.string "transporter_name"
    t.string "transporter_amount"
    t.string "other_1_name"
    t.string "other_1_amount"
    t.string "other_2_name"
    t.string "other_2_amount"
    t.string "gross_realisation"
    t.string "net_realistion"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company_name"
    t.decimal "usd_payments"
    t.decimal "zw_payments"
    t.index ["user_id"], name: "index_tobacco_sales_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Company_Name"
    t.string "cellphone"
    t.string "Address"
    t.string "Category"
    t.string "Pro_Number"
    t.boolean "is_admin", default: false
    t.boolean "is_manager", default: false
    t.boolean "is_farm_owner", default: false
    t.boolean "status", default: false
    t.string "username"
    t.boolean "is_advertiser", default: false
    t.boolean "is_contractor", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "employee_name"
    t.string "empoyee_number"
    t.string "company_name"
    t.string "farm_name"
    t.string "season"
    t.string "days_worked"
    t.decimal "gross"
    t.decimal "payee"
    t.decimal "allowance"
    t.decimal "nssa"
    t.decimal "cash_requests"
    t.decimal "other_deductions"
    t.decimal "net"
    t.string "month"
    t.decimal "nec"
    t.index ["user_id"], name: "index_wages_on_user_id"
  end

  create_table "weathers", force: :cascade do |t|
    t.date "Date"
    t.string "Area"
    t.string "Min"
    t.string "Max"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weathers_on_user_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "Company_Name"
    t.date "Date"
    t.string "Season"
    t.string "Farm_Name"
    t.string "Item"
    t.string "Quantity"
    t.string "Pro_Number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workshops_on_user_id"
  end

  add_foreign_key "activities", "users"
  add_foreign_key "advertisements", "users"
  add_foreign_key "assets", "users"
  add_foreign_key "barn_and_slate_records", "users"
  add_foreign_key "calenders", "users"
  add_foreign_key "cash_requisitions", "users"
  add_foreign_key "cashflows", "users"
  add_foreign_key "cereal_sales", "users"
  add_foreign_key "cereal_stores", "users"
  add_foreign_key "client_payments", "users"
  add_foreign_key "curings", "users"
  add_foreign_key "daily_requisitions", "users"
  add_foreign_key "deliveries", "users"
  add_foreign_key "employees", "users"
  add_foreign_key "equipment_services", "users"
  add_foreign_key "harvestings", "users"
  add_foreign_key "input_calibrations", "users"
  add_foreign_key "input_stores_usages", "users"
  add_foreign_key "irriagtion_schedules", "users"
  add_foreign_key "purchases", "users"
  add_foreign_key "rainfalls", "users"
  add_foreign_key "rationings", "users"
  add_foreign_key "rentals", "users"
  add_foreign_key "seedbeds", "users"
  add_foreign_key "set_seasons", "users"
  add_foreign_key "stores", "users"
  add_foreign_key "timebooks", "users"
  add_foreign_key "tobacco_sales", "users"
  add_foreign_key "wages", "users"
  add_foreign_key "weathers", "users"
  add_foreign_key "workshops", "users"
end
