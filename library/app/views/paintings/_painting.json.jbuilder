json.extract! painting, :id, :title, :artist, :painting_url, :created_at, :updated_at
json.url painting_url(painting, format: :json)
