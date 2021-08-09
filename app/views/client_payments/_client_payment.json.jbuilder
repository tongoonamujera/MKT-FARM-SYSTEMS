json.extract! client_payment, :id, :Company-Name, :Category, :Status, :Receipt-Number, :Amount-Paid, :Balance, :Date, :Pro-Number, :created_at, :updated_at
json.url client_payment_url(client_payment, format: :json)
