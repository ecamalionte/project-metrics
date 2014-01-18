class User < ActiveRecord::Base
  has_secure_password
    
  belongs_to :group
  has_many   :comments
  has_many   :sent_invitations, :class_name => 'Invitation', :foreign_key => 'sender_id'
  belongs_to :invitation

  validates :group_id, :invitation_id, presence: true
  validates :email, :invitation_id, uniqueness: true
  validates :email, :password, :role, presence: true
  validates :role, :inclusion => { :in => %w(admin member), :message => "%{value} is not a valid role" }

  #before_create :set_invitation_limit

  def invitation_token
      invitation.token if invitation
  end

  def invitation_token=(token)
      self.invitation = Invitation.find_by_token(token)
  end

  def admin?
    self.role == "admin"
  end

  def member?
    self.role == "member"
  end

  private

  def set_invitation_limit
      self.invitation_limit = 5
  end
end
