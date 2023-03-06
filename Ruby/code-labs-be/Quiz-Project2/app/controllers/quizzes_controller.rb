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
        @quiz = Quiz.new(quiz_params)

        if @quiz.save
            flash[:notice] = "Saved Successfully"
            redirect_to quizzes_path
        else
            flash[:notice] = "There was a problem making the quiz"
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
        redirect_to quizzes_path
    end

    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end

        def quiz_params
            params.require(:quiz).permit(:title, :description)
        end
end
