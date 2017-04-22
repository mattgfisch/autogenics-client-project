class IndexController < ApplicationController

  def index
    @experiments = Experiment.order(created_at: :desc)
    @user = User.new
    if request.xhr?
      if session[:user_id]
        @experiments = Experiment.order(created_at: :desc)
        respond_to do |format|
          format.js {render action: 'logged_in_show'}
        end
      else
        respond_to do |format|
          format.js {render action: 'logged_out_show'}
        end
      end
    end
  end

  def logged_in_show
  end

  def logged_out_show
  end

end
