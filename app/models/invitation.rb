class Invitation < ActiveRecord::Base
  belongs_to :sender, class_name: 'User'
  has_one :recipient, class_name: 'User'

  validates :recipient_email, :group_id, :role_id, presence: true
  validate :recipient_is_not_registered

  before_create :generate_token

  private

  def recipient_is_not_registered
    errors.add :recipient_email, 'is already registered' if User.find_by_email(recipient_email)
  end

  def generate_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end

end
