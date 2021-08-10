class CreateCashRequisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :cash_requisitions do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Employee_Name
      t.string :Amount_Requested
      t.string :Amount_Issued
      t.date :Pay_From
      t.date :Pay_To
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
