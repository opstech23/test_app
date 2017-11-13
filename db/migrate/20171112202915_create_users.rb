class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :pto_role
      t.boolean :admin_role

      t.timestamps
    end
  end
end
