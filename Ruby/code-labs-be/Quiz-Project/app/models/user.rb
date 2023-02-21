class User < ApplicationRecord
    validates :username, :email, :password_digest, presence: true
    has_secure_password
    has_many :quizzes

end
