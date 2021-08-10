json.extract! mkt_payment, :id, :Date, :Company_Name, :Service_Rendered, :Service, :Amount_Paid, :From, :To, :Receipt_Number, :Paid_by, :Pro_number, :created_at, :updated_at
json.url mkt_payment_url(mkt_payment, format: :json)
