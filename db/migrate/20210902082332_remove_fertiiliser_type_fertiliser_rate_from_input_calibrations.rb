class RemoveFertiiliserTypeFertiliserRateFromInputCalibrations < ActiveRecord::Migration[6.0]
  def change
    remove_column :input_calibrations, :Fertiiliser_TypeFertiliser_Rate, :string
    add_column :input_calibrations, :fertiliser_rate, :string
    add_column :input_calibrations, :fertiliser_type, :string
  end
end
