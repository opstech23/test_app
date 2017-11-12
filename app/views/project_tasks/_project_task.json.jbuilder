json.extract! project_task, :id, :task_title, :task_description, :project_id, :user_id, :approved_by_admin, :approved_by_pto, :created_at, :updated_at
json.url project_task_url(project_task, format: :json)
