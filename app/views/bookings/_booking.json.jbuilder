json.extract! booking, :id, :total_price, :created_at, :updated_at
json.url booking_url(booking, format: :json)
