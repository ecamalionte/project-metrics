class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show, :edit, :update, :destroy] 
  before_action :authorize, except: [:index, :show]
  
  load_and_authorize_resource
  permit_params :title, :desc

  def index
    @problems = Problem.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    respond_to do |format|
      if @problem.save
        format.html { redirect_to @problem, notice: t("messages.success") }
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
      if @problem.update(problem_params)
        format.html { redirect_to @problem, notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'edit' 
        }
      end
    end
  end

  def destroy
    @problem.destroy
    respond_to do |format|
      format.html { redirect_to problems_url }
      format.json { head :no_content }
    end
  end

  private
    def set_problem
      @problem = Problem.find(params[:id])
    end

    def problem_params
      params.require(:problem).permit(:title, :desc)
    end
end
