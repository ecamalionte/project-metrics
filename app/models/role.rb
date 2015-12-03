class Role < ActiveRecord::Base
  has_many :users
  has_many :invitations

  validates :name, presence: true
  validates :name, uniqueness: true

end
