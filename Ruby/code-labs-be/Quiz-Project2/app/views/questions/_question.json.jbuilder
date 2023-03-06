json.extract! question, :id, :prompt, :user_answer, :correct_answer, :possible_answers, :created_at, :updated_at
json.url question_url(question, format: :json)
