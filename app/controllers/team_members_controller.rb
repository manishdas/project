class TeamMembersController < ApplicationController

  before_filter :authenticate_person!

  def index
    @team_members = TeamMember.all
  end
  def new
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.new
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.create(params[:team_member])
    if @team_member.save
      flash[:notice] = "New Team member added Successfully!"
      redirect_to project_path(@project)
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
