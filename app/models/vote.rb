class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :group

  validates :group_id, presence: true

  def self.statistics(votable)
    return nil if votable.blank?
    {
      urgent:     votable.votes.where(value: Priority.urgent).count,
      important:  votable.votes.where(value: Priority.important).count,
      relevant:   votable.votes.where(value: Priority.relevant).count,
      wanted:     votable.votes.where(value: Priority.wanted).count,
      unwanted:   votable.votes.where(value: Priority.unwanted).count,
      total:      votable.votes.count
    }
  end
end
