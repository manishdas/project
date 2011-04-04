class Task < ActiveRecord::Base

  belongs_to :project
  belongs_to :team_member

end
