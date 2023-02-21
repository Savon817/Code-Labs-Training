class SessionsController < ApplicationController
    def new
    end

    def create
        @user = Users.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
        end
    end
end