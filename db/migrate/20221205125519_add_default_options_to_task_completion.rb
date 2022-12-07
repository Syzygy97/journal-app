class AddDefaultOptionsToTaskCompletion < ActiveRecord::Migration[7.0]
  def up
    change_column :tasks, :completion, :boolean, default: false
    add_column :categories, :user_id, :integer
    add_index :categories, :user_id
  end
  def down
  end
end
