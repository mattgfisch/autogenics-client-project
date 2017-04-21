class IndexController < ApplicationController

  def index
    @experiments = Experiment.order(created_at: :desc)
    @user = User.new
    if request.xhr?
      respond_to do |format|
        format.js {render action: 'navigation_show' }
      end
      if session[:user_id]
        @experiments = Experiment.order(created_at: :desc)
        render partial: "experiments/index"
      else
        render partial: "sessions/index"
      end
    end
  end

  def navigation_show
  end

end
