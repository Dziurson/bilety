class Ticket < ApplicationRecord
    validates :name, presence: true, length: { minimum: 6 } 
    validates :email_address, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :price, presence: true 
end
