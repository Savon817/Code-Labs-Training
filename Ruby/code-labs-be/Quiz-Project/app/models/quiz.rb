class Quiz < ApplicationRecord
  belongs_to :users
  has_many :questions
  serialize :possible_answers, Array
end
