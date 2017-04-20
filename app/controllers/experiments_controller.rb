class ExperimentsController < ApplicationController

  def show
    @experiment = Experiment.find(params[:id])
  end

  def new
    @experiment = Exeriment.new
  end

  def create
  end

end
