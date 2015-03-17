class InterviewsController < ApplicationController
  before_action :set_project
  before_action :set_interview, only: [:show, :edit, :update, :delete]

  def index
    @interviews = @project.interviews
  end

  def show

  end

  def new
    @interview = @project.interviews.new    
  end

  def edit    
    
  end

  def create
   
    @interview = @project.interviews.create(interview_params)
    redirect_to project_interview_path(project_id: @project.id, id: @interview.id)
  end

  def update
    if @interview.update(interview_params)
      redirect_to project_interview_path(project_id: @project.id, id: @interview.id)
    else
      render 'edit'
    end     
  end

  def delete
  end

  private
    def interview_params
      params.require(:interview).permit(:name, :notes, :learning, :fit)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end 

    def set_interview
      @interview = Interview.find(params[:id])
    end

end
