class Question < ApplicationRecord
    belongs_to(:quiz, class_name: 'Quiz', foreign_key: 'quiz_id')
    serialize :possible_answers, Array
end
