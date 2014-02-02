class Group < ActiveRecord::Base
  has_many :users
  has_many :votes
  has_many :invitations

  validates :block, :number, presence: true
  validates :block, :uniqueness => {scope: :number}
end
