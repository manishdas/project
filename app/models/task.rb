class Task < ActiveRecord::Base

  belongs_to :project
  belongs_to :team_member
  belongs_to :task_group

  validates :task_title, :presence => true
  validates :desciption, :presence => true
end
