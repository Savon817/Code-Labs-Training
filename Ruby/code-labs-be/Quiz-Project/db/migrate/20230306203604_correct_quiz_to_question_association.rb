class CorrectQuizToQuestionAssociation < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :index_questions_on_quizzes_id
    add_reference :questions, :quiz, foreign_key: true
  end
end
