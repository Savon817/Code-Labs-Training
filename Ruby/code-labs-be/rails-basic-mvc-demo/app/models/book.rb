class Book < ApplicationRecord
    validates :title, :summary, presence: true
end
