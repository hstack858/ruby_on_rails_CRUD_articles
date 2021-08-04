class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      # If we have current user we use it, otherwise we try to find it
      @current_user ||= User.find(session[:user_id])
    end
  end
  def logged_in?
    # Turns current_user into a boolean
    !!@current_user
  end
end
