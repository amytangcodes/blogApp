class ApplicationController < ActionController::Base

  # this is a way to access these ApplicationController methods in the view files
  # Only just for applicationControllers

  helper_method :current_user
  helper_method :logged_in?

  def current_user
    return nil if session[:user_id].blank?
    # User.find(session[:user_id])
    # memoization data - makes saving this user info more efficient:
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    # session[:user_id].present?
    # or you can do this:

    current_user.present?
  end
end
