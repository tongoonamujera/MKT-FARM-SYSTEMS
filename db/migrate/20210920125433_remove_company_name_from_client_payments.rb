class RemoveCompanyNameFromClientPayments < ActiveRecord::Migration[6.0]
  def change
    remove_column :client_payments, :Company_Name, :string
    remove_column :client_payments, :Category, :string
    remove_column :client_payments, :Receipt_Number, :string
    remove_column :client_payments, :Pro_Number, :string

    add_column :client_payments, :company_name, :string
    add_column :client_payments, :category, :string
    add_column :client_payments, :receipt_number, :string
    add_column :client_payments, :pro_number, :string
  end
end
