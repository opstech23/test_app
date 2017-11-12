json.extract! project, :id, :project_title, :project_description, :project_status, :pictures, :approved_by_admin, :approved_by_pto, :created_at, :updated_at
json.url project_url(project, format: :json)
