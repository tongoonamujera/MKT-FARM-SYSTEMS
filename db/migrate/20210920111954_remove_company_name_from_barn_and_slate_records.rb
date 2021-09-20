class RemoveCompanyNameFromBarnAndSlateRecords < ActiveRecord::Migration[6.0]
  def change
    remove_column :barn_and_slate_records, :Company_Name, :string
    remove_column :barn_and_slate_records, :Date, :string
    remove_column :barn_and_slate_records, :Season, :string
    remove_column :barn_and_slate_records, :Farm_Name, :string
    remove_column :barn_and_slate_records, :P_Barn_Number, :string
    remove_column :barn_and_slate_records, :Reap, :string
    remove_column :barn_and_slate_records, :P_Slate_NumberSlate_Weight, :string
    remove_column :barn_and_slate_records, :Barn_Weight, :string
    remove_column :barn_and_slate_records, :Cumulative_Barn_Weight, :string
    remove_column :barn_and_slate_records, :Pro_Number, :string

    add_column :barn_and_slate_records, :company_name, :string
    add_column :barn_and_slate_records, :date, :date
    add_column :barn_and_slate_records, :season, :string
    add_column :barn_and_slate_records, :farm_name, :string
    add_column :barn_and_slate_records, :p_barn_number, :string
    add_column :barn_and_slate_records, :reap, :string
    add_column :barn_and_slate_records, :p_slate_number, :string
    add_column :barn_and_slate_records, :slate_weight, :decimal
    add_column :barn_and_slate_records, :barn_weight, :decimal
    add_column :barn_and_slate_records, :cumulative_barn_weight, :decimal
    add_column :barn_and_slate_records, :pro_number, :string
  end
end
