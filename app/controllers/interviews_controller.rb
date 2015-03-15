class InterviewsController < ApplicationController

  def index
    @interviews = Interview.all
  end

  def show
    @interview = Interview.find(params[:id])
  end

  def new
    @interviews = Interview.all
  end

  def edit
  end

  def create
    @interview = Interview.new(interview_params)
   
    @interview.save
    redirect_to @interview
  end

  def update
  end

  def delete
  end

  private
    def interview_params
      params.require(:interview).permit(:name, :notes, :learning)
    end

end
