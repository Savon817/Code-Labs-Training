class Student < ApplicationRecord
    has_many :sessions
    has_many :courses, :through => :sessions
end
