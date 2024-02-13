class ProjectsController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	before_action :set_project, only: [:show, :edit, :update]

  def index
  	@projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # This will already be set by the before_action :set_project
  end

  def update
  	if @project.update(project_params)
  		redirect_to @project, notice: 'Project was successfully updated.'
  	else
  		render :edit
  	end
  end

  private

  def set_project
  	@project = Project.find(params[:id])
  end

  def project_params
  	params.require(:project).permit(:title, :description)
  end
end
