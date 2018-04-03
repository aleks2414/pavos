json.extract! event, :id, :nombre, :descripcion, :categoria, :habilitado, :fecha, :lugar, :hora, :link, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
