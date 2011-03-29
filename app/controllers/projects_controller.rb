class ProjectsController < ApplicationController

  before_filter :authenticate_person!

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def edit
     @project = Project.find(params[:id])
   end

   def show
     @project = Project.find(params[:id])
   end

   def destroy
     @project = Project.find(params[:id])
     @project.destroy
     redirect_to projects_url
   end

   def update
     @project = Project.find(params[:id])
     if @project.update_attributes(params[:project])
         redirect_to(@project, :notice => 'Project Title was changed successfully.')
     else
       render :action => "edit"
     end
   end

   def create
     @project = Project.new (params[:project])

     if @project.save
       flash[:notice] = "New Project was created Successfully!"
       redirect_to projects_url
     else
       flash[:notice] = "New project could not be created!"
       render "new"
     end
   end

end
