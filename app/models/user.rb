class User < ActiveRecord::Base
  has_secure_password
    
  belongs_to :group

  validates :email, uniqueness: true
  validates :email, :password, :role, presence: true
  validates :role, :inclusion => { :in => %w(admin member), :message => "%{value} is not a valid role" }

  def admin?
    self.role == "admin"
  end

  def member?
    self.role == "member"
  end
end
