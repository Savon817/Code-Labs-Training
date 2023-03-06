class Quiz < ApplicationRecord
    has_many(:questions, class_name: 'Question', foreign_key: 'quiz_id')
    validates :title, presence: true, length: {minimum: 4, maximum: 50}
    validates :description, presence: true, length: {minimum: 2, maximum: 250}
end
