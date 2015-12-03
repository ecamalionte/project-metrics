class SessionsController < ApplicationController
  skip_before_action :redirect_to_dashboard, only: [:new, :create]

  def new
  end

  def create
    user = find_by_email_or_login
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now.alert = "Email, Login ou senha inválidos"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: t("messages.logout")
  end

  private
  def find_by_email_or_login
    User.find_by(email: params[:email]) || User.find_by(username: params[:email])
  end
end
