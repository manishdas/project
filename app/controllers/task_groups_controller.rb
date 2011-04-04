class TaskGroupsController < ApplicationController

  before_filter :authenticate_person!

  def index
    @task_groups = TaskGroup.all
  end

  def new
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.new
  end

  def show
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.create(params[:task_group])
    if @task_group.save
      flash[:notice] = "New Team member added Successfully!"
      redirect_to project_path(@project)
    else
      flash[:notice] = "Team member was not added!"
      render "comment"
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:id])
  end

  def delete
  end

  def update
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:id])
     if @task_group.update_attributes(params[:task_group])
         redirect_to(project_task_group_path, :notice => 'Team member was edited successfully.')
     else
       render :action => "edit"
     end
  end

end
