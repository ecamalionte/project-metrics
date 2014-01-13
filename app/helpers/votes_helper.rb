module VotesHelper
   def build_action_for_vote(vote)
    if vote && vote.id
      build_path_vote vote
    else
      build_path_votes
    end
  end

  def build_path_votes_for(votable)
    votable_name = votable.class.name.underscore
    send("#{votable_name}_votes_path", "#{votable_name}_id" => votable.id)
  end

  def build_path_for_votable
    votable_name = @votable.class.name.underscore
    send("#{votable_name}_path", @votable)
  end

  def build_root_path_for_votable
    votable_name = @votable.class.name.underscore
    send("#{votable_name}s_path")
  end

  def build_path_votes
    votable_name = @votable.class.name.underscore
    send("#{votable_name}_votes_path")
  end

  def build_path_new_vote_for(votable)
    votable_name = votable.class.name.underscore
    send("new_#{votable_name}_vote_path", "#{votable_name}_id" => votable.id)
  end

  def build_path_edit_vote_for(votable, vote)
    votable_name = votable.class.name.underscore
    send("edit_#{votable_name}_vote_path", "#{votable_name}_id" => votable.id, id: vote.id)
  end

  def build_path_new_vote
    votable_name = @votable.class.name.underscore
    send("new_#{votable_name}_vote_path")
  end

  def build_path_edit_vote vote
    votable_name = @votable.class.name.underscore
    send("edit_#{votable_name}_vote_path", id: vote.id)
  end

  def build_path_vote vote
    votable_name = @votable.class.name.underscore
    send("#{votable_name}_vote_path", id: vote.id)
  end
end
