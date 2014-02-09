class VotesController < ApplicationController
  include VotesHelper

  before_action :load_votable

  def index
    @votes = @votable.votes
  end

  def statistics
    @statistics = Vote.statistics(@votable)
    @user_priority = Vote.priority_by_user(current_user, @votable)
  end

  def show
    @vote = @votable.votes.find(params[:id])
  end

  def new
    user = current_user
    @vote = @votable.votes.find_by group_id: user.group_id
    if @vote.blank?
      @vote = @votable.votes.new
    end
  end

  def edit
    @vote = @votable.votes.find(params[:id])
  end

  def create
    @vote = @votable.votes.new(vote_params)
    @vote.group_id = @current_user.group_id

    respond_to do |format|
      if @vote.save
        format.html { redirect_to build_path_statistics_vote_for(@votable) }
      else
        format.html { redirect_to build_path_statistics_vote_for(@votable), error: t("messages.error") }
      end
    end
  end

  def update
    @vote = @votable.votes.find(params[:id])

    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to build_path_statistics_vote_for(@votable) }
      else
        format.html { redirect_to build_path_statistics_vote_for(@votable), error: t("messages.error") }
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
