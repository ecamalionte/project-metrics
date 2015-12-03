class Problem < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :title, :desc, :user_id, presence: true
end
