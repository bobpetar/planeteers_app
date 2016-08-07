json.extract! task, :id, :name, :picture, :user_id, :taken_by, :status, :done, :created_at, :updated_at
json.url task_url(task, format: :json)