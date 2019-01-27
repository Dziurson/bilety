class Event < ApplicationRecord    
    validates :artist, presence: { message: "Pole Wykonawca nie może być puste" }, length: { minimum: 3, message: "Nazwa wykonawcy jest zbyt krótka" }
    validates :event_date, presence: { message: "Pole Data wydarzenia nie może być puste" }
    validates :price_low, presence: { message: "Pole Cena Minimalna nie może być puste" }, numericality: { message: "Pole Cena Minimalna może zawierać tylko liczby" }
    validates :price_high, presence: { message: "Pole Cena Maksymalna nie może być puste" }, numericality: { message: "Pole Cena Maksymalna może zawierać tylko liczby" }
    validate :event_date_not_from_past

    has_many :tickets

    def event_date_not_from_past 
        if event_date.present? && event_date < Date.today          
            errors.add('Data wydarzenia', 'nie może być z przeszłości')     
        end   
    end 

    
end
