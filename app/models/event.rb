class Event < ApplicationRecord
    has_many :tickets

    validates :artist, presence: true, length: { minimum: 6 }

    def event_date_not_from_past 
        if event_date < Date.today          
            errors.add('Data wydarzenia', 'nie może być z przeszłości')     
        end   
    end 

    
end
