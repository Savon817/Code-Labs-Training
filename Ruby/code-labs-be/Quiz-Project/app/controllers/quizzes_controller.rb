class QuizzesController < ApplicationController

    # Get - Show the quizzes
    def index
        @quizzes = Quiz.all
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

    def show
        @quiz = set_quiz
    end

    def edit
        @quiz = set_quiz
    end


    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end

        def quiz_params
            params.require(:quiz).permit(:title, :description)
        end
end