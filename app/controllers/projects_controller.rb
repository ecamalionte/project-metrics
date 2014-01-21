class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  load_and_authorize_resource
  permit_params :title, :description, :progress_rate, :started_at, :dead_line_at

  def index
    @projects = Project.all
    @projects.each { |project| project.calculete_priority }
    @projects.sort_by!{ |project| project.priority[:ranking_points] }
    @projects.reverse!
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'new'
        }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'edit'
        }
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
      @commentable = @project
      @comments = @commentable.comments
      @comment = Comment.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :progress_rate, :started_at, :dead_line_at)
    end
end
