json.extract! movie, :id, :title, :country, :year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
