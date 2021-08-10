json.extract! cash_requisition, :id, :Company_Name, :Date, :Season, :Farm_Name, :Employee_Name, :Amount_Requested, :Amount_Issued, :Pay_From, :Pay_To, :Pro_Number, :user_id, :created_at, :updated_at
json.url cash_requisition_url(cash_requisition, format: :json)
