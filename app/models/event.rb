class Event < ApplicationRecord
    validates :artist, presence: true, length: { minimum: 6 }
end
