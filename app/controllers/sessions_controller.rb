class SessionsController < ApplicationController

# when you hit the get route you should be given the option to login or register
#when you click one of these links it will get the form to login
# when you click register it directs to matts view form

# user can fill in email and password
# submit hits post create session, authenticates
# that redirects you to homepage

# if we have time, set the clearence levels on the controllers

  def index
    # this is how you get the options to staff/faculty login
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      session[:role] = user.clearance_levels
      redirect_to controller: "experiments", action: "index"
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
