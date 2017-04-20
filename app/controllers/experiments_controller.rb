class ExperimentsController < ApplicationController

  def show
    @experiment = Experiment.find(params[:id])
  end

  def index
    p "Got here"
  end

end
