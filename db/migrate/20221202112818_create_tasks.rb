class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.boolean :completion
      t.references :category

      t.timestamps
    end
  end
end
