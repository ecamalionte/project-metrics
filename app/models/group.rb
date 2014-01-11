class Group < ActiveRecord::Base
  has_many :users
  has_many :votes

  validates :name, presence: true
  validates :name, uniqueness: true
end
