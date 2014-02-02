class User < ActiveRecord::Base
  has_secure_password
    
  belongs_to :group
  has_many   :comments
  has_many   :problems
  has_many   :projects
  has_many   :sent_invitations, class_name: 'Invitation', foreign_key: 'sender_id'
  belongs_to :invitation
  belongs_to :role

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :email, :invitation_id, uniqueness: true
  validates :email, :username, :password, :role, :group_id, :invitation_id, presence: true

  def invitation_token
      invitation.token if invitation
  end

  def invitation_token=(token)
      self.invitation = Invitation.find_by_token(token)
  end

  def admin?
    self.role.name == "admin"
  end
end
