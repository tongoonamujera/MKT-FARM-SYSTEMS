class CreateMktPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :mkt_payments do |t|
      t.date :Date
      t.string :Company_Name
      t.string :Service_Rendered
      t.string :Service
      t.string :Amount_Paid
      t.string :From
      t.string :To
      t.string :Receipt_Number
      t.string :Paid_by
      t.string :Pro_number

      t.timestamps
    end
  end
end
