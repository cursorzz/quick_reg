json.extract! lesson, :id, :name, :limit, :start_time, :end_time, :teacher, :lesson_start_at, :lesson_end_at
json.url api_lesson_url(lesson, format: :json)
