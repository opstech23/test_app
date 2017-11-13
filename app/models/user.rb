class User < ApplicationRecord
	has_many :projects
	has_many :project_tasks
	has_many :votes
end
