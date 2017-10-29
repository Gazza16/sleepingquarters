json.extract! boat, :id, :boat_name, :type, :description, :price, :toilets, :shower, :baths, :kitchen, :created_at, :updated_at
json.url boat_url(boat, format: :json)
