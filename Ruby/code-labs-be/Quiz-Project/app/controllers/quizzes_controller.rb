class QuizzesController < ApplicationController
    def index
        @quizzes = Quiz.all
    end

    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end

        def quiz_params
            params.require(:quiz).permit(:title, :description)
        end
end