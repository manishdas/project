class TasksController < ApplicationController
  def index
  end

  def new
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:task_group_id])
    @task = @task_group.tasks.new
  end

  def show
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:task_group_id])
    @task = @task_group.tasks.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:task_group_id])
    @task = @task_group.tasks.create(params[:task])
    if @task.save
      flash[:notice] = "New Task added Successfully!"
      redirect_to project_task_group_path(@project,@task_group)
    else
      flash[:notice] = "Task was not added!"
      render "new"
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:task_group_id])
    @task = @task_group.tasks.find(params[:id])
  end

  def delete
  end

  def update
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:task_group_id])
    @task = @task_group.tasks.find(params[:id])
     if @task.update_attributes(params[:task])
         redirect_to(project_task_group_task_path, :notice => 'Team member was edited successfully.')
     else
       render :action => "edit"
     end
  end

  def member_update
    @project = params[:project]
    @task_id = params[:task_title]
    @member_id = params[:team_member_id]
    @task = Task.where(:id => @task_id)
    if @task.first.update_attributes(:team_member_id =>@member_id)
      redirect_to(projects_path, :notice => 'Task added successfully')
    end
  end

end
