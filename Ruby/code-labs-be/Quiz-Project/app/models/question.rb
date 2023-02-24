class Question < ApplicationRecord
  belongs_to :quizzes
  serialize :possible_answers, Array
end
