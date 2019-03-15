json.extract! product, :id, :product_id, :category_id, :name, :description, :price, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
