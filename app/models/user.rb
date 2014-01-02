class User < ActiveRecord::Base
  has_secure_password
    
  validates :email, uniqueness: true
  validates :email, :password, :role, presence: true
  validates :role, :inclusion => { :in => %w(admin member), :message => "%{value} is not a valid role" }
end
