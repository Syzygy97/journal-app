class AddDefaultOptionsToTaskCompletion < ActiveRecord::Migration[7.0]
  def up
    change_column :tasks, :completion, :boolean, default: false
    add_column :tasks, :day, :datetime
  end
  def down
    remove_column :tasks, :day
  end
end
