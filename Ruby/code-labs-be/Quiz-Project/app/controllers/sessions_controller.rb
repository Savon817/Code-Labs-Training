class SessionsController < ApplicationController
    def new
    end

    def create
        @user = Users.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            flash[:notice] = "Successfully Logged in!"
            # redirect_to root_path, notice: "Logged in"
        else
            flash[:notice] = "Invalid email or password"
            render :new
        end
    end
    
    def show

    end
end
