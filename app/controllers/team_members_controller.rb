class TeamMembersController < ApplicationController
  def index
    @team_members = Team_member.all
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.create(params[:comment])
    if @team_member.save
      flash[:notice] = "New Team member added Successfully!"
      redirect_to post_url(@post)
    else
      flash[:notice] = "Team member was not added!"
      render "comment"
    end
  end

  def delete
  end

  def update
  end


end
