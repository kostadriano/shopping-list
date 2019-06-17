json.extract! item, :id, :description, :quantity, :shopping_list_id, :created_at, :updated_at
json.url item_url(item, format: :json)
