class User < ApplicationRecord
    validates :username, presence: true, length: {minimum: 6}
    validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :password_digest,  presence: true
    has_secure_password
    has_many :quizzes
end
