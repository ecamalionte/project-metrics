class VotesController < ApplicationController
  include VotesHelper

  before_action :load_votable
  before_action :authorize, except: [:index, :show]

  # GET /votes
  # GET /votes.json
  def index
    @votes = @votable.votes
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    @vote = @votable.votes.find(params[:id])
  end

  # GET /votes/new
  def new
    @vote = @votable.votes.new
  end

  # GET /votes/1/edit
  def edit
    @vote = @votable.votes.find(params[:id])
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = @votable.votes.new(vote_params)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to build_path_vote(@vote), notice: 'Vote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vote }
      else
        format.html { render action: 'new' }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    @vote = @votable.votes.find(params[:id])

    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to build_path_vote(@vote), notice: 'Vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote = @votable.votes.find(params[:id])
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to build_path_votes }
      format.json { head :no_content }
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
