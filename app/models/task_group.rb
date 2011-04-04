class TaskGroup < ActiveRecord::Base

  belongs_to :project
  has_many :tasks, :through => :team_member

  validates :task_name, :presence => true

end
