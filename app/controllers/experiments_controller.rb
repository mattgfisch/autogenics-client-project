class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def show
  end

end
