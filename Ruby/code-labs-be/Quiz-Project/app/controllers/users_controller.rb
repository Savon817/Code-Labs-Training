class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:message] = "You have successfully signed up!"
            redirect_to quizzes_path
        else
            flash[:message] = "There was a problem with signing you up."
            render :new, status: :unprocessable_entity
        end       
    end

    def show

    end

    private
    
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end