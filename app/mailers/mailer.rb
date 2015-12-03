class Mailer < ActionMailer::Base
  default from: "community.notifier@gmail.com"

  def invitation(invitation, signup_url)
    @recipient = invitation.recipient_email
    @invitation = invitation
    @signup_url = signup_url

    invitation.update_attribute(:sent_at, Time.now)
    mail(to: @recipient, subject: "Convite Cadastramento Community")
  end
end
