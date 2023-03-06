class QuizzesController < ApplicationController
    before_action :set_quiz, only: [:show, :edit, :update, :destroy]

    # Get - Show the quizzes
    def index
        @quizzes = Quiz.all
    end

    def show
    end

    # Get - form to create a quiz
    def new
        @quiz = Quiz.new
    end

    def create
        # debugger
        @quiz = helpers.current_user.quizzes.new(quiz_params)

        if @quiz.save
            flash[:notice] = "Saved Successfully"
            redirect_to @quiz
        else
            render :new, status: :unprocessable_entity
        end
    end


    def edit
    end

    def update

        if @quiz.update(quiz_params)
            redirect_to quizzes_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @quiz.destroy
        flash[:notice] = "The quiz has been destroyed"
        render redirect_to quizzes_path
    end


    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end

        def quiz_params
            params.require(:quiz).permit(:title, :description)
        end
end