class ApplicationController < ActionController::Base
  
  # to be visible also in the views
  helper_method :current_user, :logged_in?

  # to be visible in the controllers
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user # convert to bool
  end

end
