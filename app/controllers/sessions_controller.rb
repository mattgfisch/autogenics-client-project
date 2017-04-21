class SessionsController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(user_params[:email])
    @experiments = Experiment.all
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      session[:role] = user.clearance_levels
      if request.xhr?
        respond_to do |format|
          format.js {}
        end
      else
        redirect_to controller: "experiments", action: "index"
      end
    else
      if request.xhr?
        respond_to do |format|
          format.js { render action: 'create' }
        end
      else
        redirect_to sessions_path
      end
    end
  end

  def destroy
    session.clear
    redirect_to controller: "experiments", action: "index"
  end

  private
    def user_params
      params.require(:post).permit(:email, :password, :role)
    end
end
