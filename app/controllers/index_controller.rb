class IndexController < ApplicationController
  def index
    @experiments = Experiment.all
  end
end
