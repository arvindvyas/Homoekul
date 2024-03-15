json.extract! video_lecture, :id, :title, :trailer_url, :full_video_url, :created_at, :updated_at
json.url video_lecture_url(video_lecture, format: :json)
