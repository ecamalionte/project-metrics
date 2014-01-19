class UsersController < ApplicationController
  skip_before_action :redirect_to_dashboard, only: [:new, :create] 
  before_action :set_user, only: :create

  def new
    @user = User.new(invitation_token: params[:invitation_token])
    if @user.invitation
      @user.email = @user.invitation.recipient_email
      @user.role  = @user.invitation.role
      @user.group = @user.invitation.group
    end
  end

  def create
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: t("messages.success")
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role_id, :group_id)
  end

  def set_user
    @user = User.new(user_params)
    @user.invitation = Invitation.find_by token: params[:user][:invitation_token]
  end
end
