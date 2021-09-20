class RemoveCompanyNameFromCashRequisitions < ActiveRecord::Migration[6.0]
  def change
    remove_column :cash_requisitions, :Company_Name, :string
    remove_column :cash_requisitions, :Date, :date
    remove_column :cash_requisitions, :Season, :string
    remove_column :cash_requisitions, :Farm_Name, :string
    remove_column :cash_requisitions, :Employee_Name, :string
    remove_column :cash_requisitions, :Amount_Requested, :string
    remove_column :cash_requisitions, :Amount_Issued, :string
    remove_column :cash_requisitions, :Pay_From, :date
    remove_column :cash_requisitions, :Pay_To, :date
    remove_column :cash_requisitions, :Pro_Number, :string

    add_column :cash_requisitions, :company_name, :string
    add_column :cash_requisitions, :date, :date
    add_column :cash_requisitions, :season, :string
    add_column :cash_requisitions, :farm_name, :string
    add_column :cash_requisitions, :employee_name, :string
    add_column :cash_requisitions, :amount_requested, :decimal
    add_column :cash_requisitions, :amount_issued, :decimal
    add_column :cash_requisitions, :pay_from, :date
    add_column :cash_requisitions, :pay_to, :date
    add_column :cash_requisitions, :pro_number, :string
  end
end
