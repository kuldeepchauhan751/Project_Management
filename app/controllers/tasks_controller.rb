class TasksController < ApplicationController
 
  def index
  	@tasks=Task.all
  end

  def new
  	@task=Task.new
  end

  def create
  	@user=User.find_by(id: current_user.id)
  	@task=@user.tasks.new(project_params)
  	if @task.save
  		flash[:notice] = "Task create Successfully"
        redirect_to projects_path
    else
    	render 'new'

  		
  	end
  end

  def show
  end

  
end
