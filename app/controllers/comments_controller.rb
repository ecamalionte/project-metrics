class CommentsController < ApplicationController
  include CommentsHelper

  before_action :load_commentable

  def index
    @comments = @commentable.comments
  end

  def show
    @comment = @commentable.comments.find(params[:id])
  end

  def new
    @comment = @commentable.comments.new
  end

  def edit
    @comment = @commentable.comments.find(params[:id])
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user_id = @current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to build_path_comment(@comment), notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'new' 
        }
      end
    end
  end

  def update
    @comment = @commentable.comments.find(params[:id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to build_path_comment(@comment), notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'edit' 
        }
      end
    end
  end

  def destroy
    @comment = @commentable.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to build_path_comments }
    end
  end

  private

  def load_commentable
    klass = [Project, Problem].detect { |c| params["#{c.name.underscore}_id"] }
    commentable_id = params["#{klass.name.underscore}_id"]
    @commentable = klass.find(commentable_id)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end

end
