class UsersController < ApplicationController
  skip_before_action :redirect_to_dashboard, only: [:new, :create]
  before_action :set_user, only: :create
  before_action :set_invitation, only: :create

  load_and_authorize_resource only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

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
      if current_user.present?
        redirect_to users_path, notice: t("messages.success")
      else
        session[:user_id] = @user.id
        redirect_to root_url, notice: t("messages.success")
      end
    else
      flash.now.alert = "Não foi possível cadastrar usuário."
      render "new"
    end
  end

  def edit
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: t("messages.success") }
      else
        format.html {
          flash[:error] =  t("messages.error")
          render 'edit'
        }
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :role_id, :group_id, :invitation_id)
  end

  def set_user
    @user = User.new(user_params)
  end

  def set_invitation
    @user.invitation = Invitation.fake(@user.email, @user.group_id, @user.role_id) if @user.invitation.nil? && current_user.present?
  end
end
