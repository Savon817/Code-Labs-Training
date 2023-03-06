class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :user_answer
      t.string :correct_answer
      t.text :possible_answers

      t.timestamps
    end
  end
end
