json.extract! input_stores_usage, :id, :company_name, :season, :date, :farm_name, :input_name, :quantity_used, :unit, :total_amount, :profile_number, :delete, :user_id, :created_at, :updated_at
json.url input_stores_usage_url(input_stores_usage, format: :json)
