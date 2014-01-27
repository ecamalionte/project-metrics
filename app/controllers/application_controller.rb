class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :redirect_to_dashboard

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Você não tem permissão para executar essa ação"
    redirect_to root_url
  end


  private

  def redirect_to_dashboard
    redirect_to new_session_path unless current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
