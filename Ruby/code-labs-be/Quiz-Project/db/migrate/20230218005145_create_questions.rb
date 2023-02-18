class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :user_answer
      t.string :correct_answer
      t.belongs_to :quizzes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
