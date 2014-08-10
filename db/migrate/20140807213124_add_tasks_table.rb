class AddTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :body
      t.date :due_date
      t.integer :task_list_id
    end
  end
end
