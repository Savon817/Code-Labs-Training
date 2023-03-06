class DropQuizzesIdTableFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :quizzes_id
  end
end
