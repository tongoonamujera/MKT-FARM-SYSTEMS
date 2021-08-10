class CreateBarnAndSlateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :barn_and_slate_records do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :P_Barn_Number
      t.string :Reap
      t.string :P_Slate_NumberSlate_Weight
      t.string :Barn_Weight
      t.string :Cumulative_Barn_Weight
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
