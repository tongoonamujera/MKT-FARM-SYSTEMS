json.extract! purchase, :id, :company_name, :date, :season, :item, :unit, :unit_price, :total_items, :total_amount, :VAT, :pro_number, :user_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
