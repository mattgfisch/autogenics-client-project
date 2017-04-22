class ExperimentsController < ApplicationController

  def index
    @experiments = Experiment.order(created_at: :desc)
  end

  def show
    @experiment = Experiment.find(params[:id])
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end

  def new
    @experiment = Experiment.new
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end

  def create
    @experiment = Experiment.new( title: experiment_params[:title],
                                      abstract: experiment_params[:abstract],
                                      introduction: experiment_params[:introduction],
                                      materials: experiment_params[:materials],
                                      results: experiment_params[:results],
                                      discussion: experiment_params[:discussion],
                                      conclusion: experiment_params[:conclusion],
                                      supporting_info: experiment_params[:supporting_info],
                                      acknowledgments: experiment_params[:acknowledgments],
                                      references: experiment_params[:references],
                                      author_contributions: experiment_params[:author_contributions],
                                      author_id: session[:user_id],
                                      staff_size: experiment_params[:staff_size])
    if @experiment.save
      respond_to do |format|
        format.js {}
      end
    else
      @experiment = Experiment.new
      @message = "Missing and/or incorrect information"
      respond_to do |format|
        format.js {render action: 'new'}
      end
    end
  end

  private
    def experiment_params
       params.require(:experiment).permit(:title, :abstract, :introduction, :materials, :results, :discussion, :conclusion, :supporting_info, :acknowledgments, :author_contributions, :references, :staff_size)
    end

end
