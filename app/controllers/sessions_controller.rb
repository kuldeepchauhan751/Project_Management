class SessionsController < ApplicationController
   def new
  	user=User.new
  end
  def create
  user = User.find_by(email: params[:session][:email])


      if user && user.authenticate(params[:session][:password])
        flash[:notice] = "Login Successfully"
        log_in user
      redirect_to projects_path
      else

      flash.now[:danger] = 'Invalid Email / Password Combination'

      render 'new'

      end
  end

  def destroy
    log_out
    redirect_to root_url
    end
end
