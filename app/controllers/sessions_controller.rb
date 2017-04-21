class SessionsController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      session[:role] = user.clearance_levels
      "<%= render 'experiments/index' %>"
      # redirect_to controller: "experiments", action: "index"
    else
      redirect_to sessions_path
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
