class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]
  
  load_and_authorize_resource
  permit_params :name

  def index
    @groups = Group.all
  end
  def show
  end

  def new
  end

  def edit
  end

  def create
    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: t("messages.success") }
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
      if @group.update(group_params)
        format.html { redirect_to @group, notice: t("messages.success") }
        format.json { head :no_content }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'edit' 
        }
      end
    end
  end

  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:name)
    end
end
