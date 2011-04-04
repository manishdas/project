class AddTaskGroupIdToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :task_group_id, :integer
  end

  def self.down
    remove_column :tasks, :task_group_id
  end
end
