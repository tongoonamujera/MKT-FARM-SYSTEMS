class RemoveCompanyNameFromDailyRequisitions < ActiveRecord::Migration[6.0]
  def change
    remove_column :daily_requisitions, :Company_Name, :string
    remove_column :daily_requisitions, :Date, :date
    remove_column :daily_requisitions, :Season, :string
    remove_column :daily_requisitions, :Farm_Name, :string
    remove_column :daily_requisitions, :Requisition, :string
    remove_column :daily_requisitions, :Pro_Number, :string

    add_column :daily_requisitions, :company_name, :string
    add_column :daily_requisitions, :date, :date
    add_column :daily_requisitions, :season, :string
    add_column :daily_requisitions, :farm_name, :string
    add_column :daily_requisitions, :requisition, :string
    add_column :daily_requisitions, :pro_number, :string
  end
end
