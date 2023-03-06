class Question < ApplicationRecord
  belongs_to :quiz
  serialize :possible_answers, Array
end
