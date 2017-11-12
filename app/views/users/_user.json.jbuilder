json.extract! user, :id, :name, :email, :password, :pto_role, :admin_role, :created_at, :updated_at
json.url user_url(user, format: :json)
