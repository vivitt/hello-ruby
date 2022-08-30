json.extract! tarea, :id, :descr, :completed, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
