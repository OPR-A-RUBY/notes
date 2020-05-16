json.extract! note, :id, :title, :user_id, :label_id, :public, :level, :stars, :description, :body, :url, :created_at, :updated_at
json.url note_url(note, format: :json)
