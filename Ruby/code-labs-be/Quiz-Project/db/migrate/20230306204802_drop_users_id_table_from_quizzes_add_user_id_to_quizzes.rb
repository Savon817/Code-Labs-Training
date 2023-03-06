class DropUsersIdTableFromQuizzesAddUserIdToQuizzes < ActiveRecord::Migration[7.0]
  def change
    remove_column :quizzes, :users_id
    add_reference :quizzes, :user, foreign_key: true
  end
end
