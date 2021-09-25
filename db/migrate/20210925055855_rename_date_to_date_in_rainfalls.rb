class RenameDateToDateInRainfalls < ActiveRecord::Migration[6.0]
  def change
    rename_column :rainfalls, :Date, :date
  end
end
