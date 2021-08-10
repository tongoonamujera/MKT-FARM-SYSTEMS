class CreateEquipmentServices < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment_services do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Type
      t.string :Equipment_Number
      t.string :Service_Type
      t.string :Done_By
      t.string :Mileage
      t.string :next_service_milaege
      t.string :Job
      t.string :Total_Amount
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
