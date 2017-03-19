class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in

    def current_user
      if session[:user_id] != nil
        @current_user ||= User.find(session[:user_id])
      else
        return nil
      end
    end

end
