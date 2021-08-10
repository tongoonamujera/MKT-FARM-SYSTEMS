json.extract! input_calibration, :id, :Company_Name, :Date, :Season, :Farm_Name, :Section, :Crop, :Variety, :Fertiiliser_TypeFertiliser_Rate, :Bags_Used, :Herbicide, :Herbicide_Rate, :Pro_Number, :user_id, :created_at, :updated_at
json.url input_calibration_url(input_calibration, format: :json)
