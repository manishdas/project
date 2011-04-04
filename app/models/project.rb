class Project < ActiveRecord::Base

  has_many :tasks, :through => :team_members
  has_many :team_members
  has_many :task_groups

  validates :name, :presence => true

end
