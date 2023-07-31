class ApplicationController < ActionController::Base
  include ActionController::Cookies
  # protect_from_forgery with: :exception

  # before_action :authenticate_user!

  private

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
end
