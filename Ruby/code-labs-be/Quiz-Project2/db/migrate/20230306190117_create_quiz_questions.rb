class CreateQuizQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_questions do |t|
      t.integer :quiz_id, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
