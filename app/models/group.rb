class Group < ActiveRecord::Base
  has_many :users
  has_many :votes
  has_many :invitations

  validates :block, :number, presence: true
  validates :block, :uniqueness => {scope: :number}

  def to_s
    "#{number}#{block}"
  end
end
