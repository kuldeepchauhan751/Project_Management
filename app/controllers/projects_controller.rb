class ProjectsController < ApplicationController
  
  def index
  	@projects=Project.all
  end

  def new
  	@project=Project.new
  end

  def create
  	@user=User.find_by(id: current_user.id)
  	@project=@user.projects.build(project_params)
  	if @project.save
  		flash[:notice] = "Project create Successfully"
        redirect_to @projects
    
    else
    	render 'new'
    end
  end

  def show

  end


  private
  def project_params
  	params.require(:project).permit(:name,:start_date,:end_date)
  end
end
