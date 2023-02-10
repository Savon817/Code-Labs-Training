class Course < ApplicationRecord
    has_many :sessions
    has_many :students, :through => :sessions
end
