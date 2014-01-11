class VotesController < ApplicationController
  include VotesHelper

  before_action :load_votable
  before_action :authorize, except: [:index, :show]

  def index
    @votes = @votable.votes
  end

  def show
    @vote = @votable.votes.find(params[:id])
  end

  def new
    @vote = @votable.votes.new
  end

  def edit
    @vote = @votable.votes.find(params[:id])
  end

  def create
    @vote = @votable.votes.new(vote_params)
    @vote.group_id = @current_user.group_id

    respond_to do |format|
      if @vote.save
        format.html { redirect_to build_path_vote(@vote), notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'new' 
        }
      end
    end
  end

  def update
    @vote = @votable.votes.find(params[:id])

    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to build_path_vote(@vote), notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'edit' 
        }
      end
    end
  end

  def destroy
    @vote = @votable.votes.find(params[:id])
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to build_path_votes }
    end
  end

 private

  def load_votable
    klass = [Project, Problem].detect { |c| params["#{c.name.underscore}_id"] }
    votable_id = params["#{klass.name.underscore}_id"]
    @votable = klass.find(votable_id)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vote_params
    params.require(:vote).permit(:value, :votable_id, :votable_type)
  end
end
