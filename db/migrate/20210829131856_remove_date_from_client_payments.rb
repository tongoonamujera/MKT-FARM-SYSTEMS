class RemoveDateFromClientPayments < ActiveRecord::Migration[6.0]
  def change
    remove_column :client_payments, :Date, :date
    remove_column :client_payments, :Amount_Paid, :string
    remove_column :client_payments, :Balance, :string
    add_column :client_payments, :amount_paid, :decimal
    add_column :client_payments, :balance, :decimal
    add_column :client_payments, :valid_from, :date
    add_column :client_payments, :valid_to, :date
  end
end
