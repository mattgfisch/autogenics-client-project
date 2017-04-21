class IndexController < ApplicationController

  def index
    @experiments = Experiment.order(created_at: :desc)
    @user = User.new
    if request.xhr?
      if session[:user_id]
        @experiments = Experiment.order(created_at: :desc)
        render partial: "experiments/index"
        else
        render partial: "sessions/index"
      end
    end
  end

end
