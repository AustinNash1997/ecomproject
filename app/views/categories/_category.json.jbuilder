json.extract! category, :id, :category_id, :name, :description, :image, :created_at, :updated_at
json.url category_url(category, format: :json)
