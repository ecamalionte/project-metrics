class UsersController < ApplicationController
  def new
    @user = User.new(invitation_token: params[:invitation_token])
    @user.email = @user.invitation.recipient_email if @user.invitation
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role_id, :invitation_id,
                                 :group_id)
  end
end
