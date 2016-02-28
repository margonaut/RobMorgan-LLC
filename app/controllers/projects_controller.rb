class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = "Project saved"
      redirect_to project_path(@project)
    else
      flash[:notice] = @project.errors.full_messages.join(". ")
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :project_date, :content, :bootsy_image_gallery_id)
  end

end
