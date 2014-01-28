class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :group

  validates :group_id, presence: true
end
