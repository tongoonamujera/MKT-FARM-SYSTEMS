json.extract! employee, :id, :company_name, :farm_name, :employee_name, :employee_number, :daily_rate, :worker_status, :user_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
