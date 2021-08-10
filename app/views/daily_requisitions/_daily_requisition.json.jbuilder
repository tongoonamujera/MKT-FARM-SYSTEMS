json.extract! daily_requisition, :id, :Company_Name, :Date, :Season, :Farm_Name, :Requisition, :Pro_Number, :user_id, :created_at, :updated_at
json.url daily_requisition_url(daily_requisition, format: :json)
