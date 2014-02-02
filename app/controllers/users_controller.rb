class UsersController < ApplicationController
  skip_before_action :redirect_to_dashboard, only: [:new, :create] 
  before_action :set_user, only: :create

  load_and_authorize_resource only: :edit

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
      flash.now.alert = "Não foi possível cadastrar usuário."
      render "new"
    end
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :role_id, :group_id, :invitation_id)
  end

  def set_user
    @user = User.new(user_params)
  end
end
