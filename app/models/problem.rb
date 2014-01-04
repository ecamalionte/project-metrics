class Problem < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :title, :desc, presence: true
end
