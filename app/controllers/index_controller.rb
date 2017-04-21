class IndexController < ApplicationController

  def index
    # if session[:user_id]
    #   #logged in
    #   if request.xhr?
    #     # AJAX render experiments index page
    #   else
    #     redirect_to controller: 'experiments', action: 'index'
    #   end
    # else
      # not logged in
      if request.xhr?
        render partial: "index"
        # respond_to do |format|
        #   # format.html
        #   # format.json
        #   format.js {}
        # end
        # AJAX render the login form
      # else
      #   redirect_to controller: 'sessions', action: 'new'
      # end
    end
  end
end
