json.extract! rental, :id, :company_name, :date, :season, :company_paid, :receipt_number, :reason, :amount_paid, :pro_number, :user_id, :created_at, :updated_at
json.url rental_url(rental, format: :json)
