class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  validates :title, presence: true, length: {minimum: 4, maximum: 50}
  validates :description, presence: true, length: {minimum: 2, maximum: 250}
end
