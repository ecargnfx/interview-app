class InterviewsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @interview = @project.interviews.create(interview_params)
    redirect_to project_path(@project)
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
