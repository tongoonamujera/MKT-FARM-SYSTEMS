class RemoveCompanyNameFromMktPayments < ActiveRecord::Migration[6.0]
  def change
    remove_column :mkt_payments, :Company_Name, :string
    remove_column :mkt_payments, :Date, :date
    remove_column :mkt_payments, :Service_Rendered, :string
    remove_column :mkt_payments, :Service, :string
    remove_column :mkt_payments, :Amount_Paid, :string
    remove_column :mkt_payments, :From, :string
    remove_column :mkt_payments, :To, :string
    remove_column :mkt_payments, :Receipt_Number, :string
    remove_column :mkt_payments, :Paid_by, :string
    remove_column :mkt_payments, :Pro_number, :string

    add_column :mkt_payments, :company_name, :string
    add_column :mkt_payments, :date, :date
    add_column :mkt_payments, :service_rendered, :string
    add_column :mkt_payments, :service, :string
    add_column :mkt_payments, :amount_paid, :decimal
    add_column :mkt_payments, :from, :string
    add_column :mkt_payments, :to, :string
    add_column :mkt_payments, :receipt_number, :string
    add_column :mkt_payments, :paid_by, :string
    add_column :mkt_payments, :pro_number, :string
  end
end
