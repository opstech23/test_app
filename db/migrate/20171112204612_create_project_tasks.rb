class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks do |t|
      t.string :task_title
      t.text :task_description
      t.belongs_to :projects, index: true, foreign_key: true
      t.belongs_to :users, index: true, foreign_key: true
      t.boolean :approved_by_admin
      t.boolean :approved_by_pto

      t.timestamps
    end
  end
end
