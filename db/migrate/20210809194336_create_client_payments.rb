class CreateClientPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :client_payments do |t|
      t.string :Company_Name
      t.string :Category
      t.string :Receipt_Number
      t.string :Amount_Paid
      t.string :Balance
      t.date :Date
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
