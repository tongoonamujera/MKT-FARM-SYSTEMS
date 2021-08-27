json.extract! timebook, :id, :date, :employee_name, :employee_number, :rate, :day, :gross, :user_id, :created_at, :updated_at
json.url timebook_url(timebook, format: :json)
