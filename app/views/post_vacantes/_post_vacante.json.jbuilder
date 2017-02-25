json.extract! post_vacante, :id, :carrera, :area, :nvacantes, :descripcion, :created_at, :updated_at
json.url post_vacante_url(post_vacante, format: :json)
