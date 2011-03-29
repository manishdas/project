class Project < ActiveRecord::Base

  has_many :tasks
  has_many :team_members

  validates :name, :presence => true

end
