class Project < ApplicationRecord
	belongs_to :user, optional: true
	has_many :project_tasks
	has_many :votes
	
	enum project_status: { not_active: 0, pending: 1, complete: 2 }

	# VALIDATIONS

	# Can test with rails c ,by creating an object and running the below methods
	
	# project.errors.any? should return true if you try to save project_title and project_description
	# project.errors.full_messages should tell you which column is blank on save


	validates :project_title, presence: true, length: { minimum: 3, maximum: 50 }
	validates :project_description, presence: true, length: { minimum: 10, maximum: 300 }

end
