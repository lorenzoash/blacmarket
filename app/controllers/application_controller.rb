class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  private

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  def authorize
    redirect_to login_path, alert: "Not authorized - you must be logged in" if current_user.nil?
  end
  def authorize_admin
    redirect_to login_path, alert: "Not authorized - you must be logged in" unless !current_user.nil?  && current_user.admin
  end
end
