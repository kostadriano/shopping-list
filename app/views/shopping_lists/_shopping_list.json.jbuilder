json.extract! shopping_list, :id, :name, :completed, :created_at, :updated_at
json.url shopping_list_url(shopping_list, format: :json)
