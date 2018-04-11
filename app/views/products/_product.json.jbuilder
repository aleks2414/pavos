json.extract! product, :id, :disponible, :nombre, :descripcion, :categoria, :precio, :tiempo, :foto, :foto2, :foto3, :user_id, :beneficios, :ingredientes, :created_at, :updated_at
json.url product_url(product, format: :json)
