class Resource < ApplicationRecord
    validates :content, presence: true
end
