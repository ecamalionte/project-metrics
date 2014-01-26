class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource except: [:in_progress, :finished]
  permit_params :title, :description, :progress_rate, :started_at, :dead_line_at

  def in_progress
    @projects = Project.in_progress
    priority
    render "index"
  end

  def finished
    @projects = Project.finished
    @finished = true
    priority
    render "index"
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
    @project.user = current_user

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
  def set_project
    @project = Project.find(params[:id])
    @commentable = @project
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def project_params
    params.require(:project).permit(:title, :description, :progress_rate, :started_at, :dead_line_at)
  end

  def priority
    @projects.each { |project| project.calculete_priority }
    @projects.sort_by!{ |project| project.priority[:ranking_points] }
    @projects.reverse!
  end
end
