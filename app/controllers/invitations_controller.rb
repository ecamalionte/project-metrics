class InvitationsController < ApplicationController

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.sender = current_user
    if @invitation.save
      Mailer.invitation(@invitation, signup_url(@invitation.token))
      flash[:notice] = t("messages.success")
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  private
    def invitation_params
      params.require(:invitation).permit(:recipient_email, :group_id, :role_id)
    end
end
