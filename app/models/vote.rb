class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :group

  validates :group_id, presence: true

  def self.statistics(votable)
    return nil if votable.blank?
    result = {}
    votes   = build_vote_results(votable)
    winner  = build_winner(votes)
    ranking = build_ranking_points(votes)
    total   = build_total(votable)
    result.merge(votes)
    .merge(winner)
    .merge(ranking)
    .merge(total)
  end

  def self.priority_by_user(current_user, votable)
    vote = votable.votes.where(group_id: current_user.group_id).first
    return nil unless vote
    Priority.get_instance vote.value
  end

  private

  def self.build_vote_results(votable)
    {
      urgent:    votable.votes.where(value: Priority.urgent).count,
      important: votable.votes.where(value: Priority.important).count,
      relevant:  votable.votes.where(value: Priority.relevant).count,
      wanted:    votable.votes.where(value: Priority.wanted).count,
      unwanted:  votable.votes.where(value: Priority.unwanted).count
    }
  end

  def self.build_winner(votes)
    winner_value = votes.values.max
    if winner_value == 0
      { winner: nil }
    else
      { winner: votes.key(winner_value) }
    end
  end

  def self.build_ranking_points(votes)
    total = 0
    votes.each do |priority, number_of_votes|
      weight = Priority.get_weight(priority)
      total += (weight * number_of_votes)
    end
    { ranking_points: total }
  end

  def self.build_total(votable)
    { total: votable.votes.count }
  end
end
