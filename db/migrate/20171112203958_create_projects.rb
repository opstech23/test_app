class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.text :project_description
      t.column :project_status, :integer, default: 0
      t.string :pictures
      t.boolean :approved_by_admin
      t.boolean :approved_by_pto
      t.belongs_to :users, index: true, foreign_key: true
      t.bigint :donation_goal
      t.timestamps
    end
  end
end
