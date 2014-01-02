class User < ActiveRecord::Base
  has_secure_password
    
  validates :email, uniqueness: true
  validates :email, :password, :role, presence: true
end
