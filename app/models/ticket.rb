class Ticket < ApplicationRecord   

    validates :name, presence: { message: "Pole Imię i Nazwisko nie może być puste" }, length: { minimum: 3 } 
    validates :email_address, presence: { message: "Pole E-mail nie może być puste" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Pole E-mail ma niewłaściwy format" }
    validates :address, presence: { message: "Pole Adres nie może być puste" }
    validates :price, presence: { message: "Pole Cena nie może być puste" }
    validates :event, presence: { message: "Wydarzenie o podanym ID nie istnieje" }
    validates :user, presence: { message: "Użytkownik o podanym ID nie istnieje" }

    belongs_to :event  
    belongs_to :user 
     
end
