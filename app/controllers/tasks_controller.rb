class TasksController < ApplicationController
 
  def index
  	@tasks=Task.all
  end

  def new
  	@task=Task.new
  end

  def create
    @project=Project.find(params[:project_id])
  	@task=@user.tasks.create(project_params,owner_id: current_user.id)
  	if @task.save
  		flash[:notice] = "Task create Successfully"
        redirect_to tasks_path
    else
    	render 'new'	
  	end
  end

  def show
  end
private
    def task_params
      params.require(:task).permit(:name,:start_date,:end_date)
    end
  
end
