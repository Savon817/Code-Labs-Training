class SessionsController < ApplicationController

    def create
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            flash[:notice] = "Successfully Logged in!"
            redirect_to quizzes_path, notice: "Logged in" # Subject to change
        else
            flash[:notice] = "Invalid email or password"
            render :new
        end
    end
    
    def show

    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out!"
        redirect_to quizzes_path # Subject to change/ or not 
    end
end
