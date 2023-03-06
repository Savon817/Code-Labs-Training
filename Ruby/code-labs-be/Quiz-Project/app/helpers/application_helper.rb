module ApplicationHelper
    def current_user
        @current_user ||= User.find(session[:users_id]) if session[:users_id]
    end

    def logged_in?
        !!current_user
    end
end
