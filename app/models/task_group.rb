class TaskGroup < ActiveRecord::Base

  belongs_to :project
  has_many :tasks

  validates :task_name, :presence => true

end
