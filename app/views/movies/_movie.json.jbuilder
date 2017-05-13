json.extract! movie, :id, :title, :country, :year, :image, :director_id, :trailer, :created_at, :updated_at
json.url movie_url(movie, format: :json)
