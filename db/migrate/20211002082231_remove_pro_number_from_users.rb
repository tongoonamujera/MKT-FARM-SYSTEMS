class RemoveProNumberFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :pro_number, :string
    remove_column :activities, :pro_number, :string
    remove_column :assets, :pro_number, :string
    remove_column :barn_and_slate_records, :pro_number, :string
    remove_column :calenders, :pro_number, :string
    remove_column :cash_requisitions, :pro_number, :string
    remove_column :cashflows, :pro_number, :string
    remove_column :cereal_sales, :pro_number, :string
    remove_column :cereal_stores, :pro_number, :string
    remove_column :client_payments, :pro_number, :string
    remove_column :curings, :pro_number, :string
    remove_column :daily_requisitions, :pro_number, :string
    remove_column :deliveries, :pro_number, :string
    remove_column :equipment_services, :pro_number, :string
    remove_column :harvestings, :pro_number, :string
    remove_column :input_calibrations, :pro_number, :string
    remove_column :input_stores_usages, :profile_number, :string
    remove_column :irriagtion_schedules, :pro_number, :string
    remove_column :land_names, :pro_number, :string
    remove_column :mkt_payments, :pro_number, :string
    remove_column :purchases, :pro_number, :string
    remove_column :rainfalls, :pro_number, :string
    remove_column :rationings, :pro_number, :string
    remove_column :rentals, :pro_number, :string
    remove_column :seedbeds, :pro_number, :string
    remove_column :stores, :pro_number, :string
    remove_column :workshops, :pro_number, :string
  end
end
