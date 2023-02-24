class MovePossibleAnswersToQuestion < ActiveRecord::Migration[7.0]
  def change
    remove_column :quizzes, :possible_answers 
    add_column :questions, :possible_answers, :text
  end
end
