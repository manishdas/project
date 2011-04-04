class TasksController < ApplicationController
  def index
  end

  def new
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.find(params[:team_member_id])
    @task = @team_member.tasks.new
  end

  def show
  end

  def create
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.find(params[:team_member_id])
    @task = @team_member.tasks.create(params[:task])
    if @task.save
      flash[:notice] = "New Task added Successfully!"
      redirect_to project_team_member_path(@project,@team_member)
    else
      flash[:notice] = "Task was not added!"
      render "new"
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.find(params[:team_member_id])
    @task = @team_member.tasks.find(params[:id])
  end

  def delete
  end

  def update
    @project = Project.find(params[:project_id])
    @team_member = @project.team_members.find(params[:team_member_id])
    @task = @team_member.tasks.find(params[:id])
     if @task.update_attributes(params[:task])
         redirect_to(project_team_member_task_path, :notice => 'Team member was edited successfully.')
     else
       render :action => "edit"
     end
  end

end
