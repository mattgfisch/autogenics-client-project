class IndexController < ApplicationController

  def index
    @user = User.new
    if request.xhr?
      if session[:user_id]
        @experiments = Experiment.all
        render partial: "experiments/index"
        else
        render partial: "sessions/index"
      end
    end
  end
end
