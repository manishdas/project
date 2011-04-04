class AddTeamMemberIdToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :team_member_id, :integer
  end

  def self.down
    remove_column :tasks, :team_member_id
  end
end
