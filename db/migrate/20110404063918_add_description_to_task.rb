class AddDescriptionToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :desciption, :text
  end

  def self.down
    remove_column :tasks, :desciption
  end
end
