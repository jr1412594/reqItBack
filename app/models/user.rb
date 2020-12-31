class User < ApplicationRecord
    has_many :requests
    has_many :items, through: :requests
    validates :room_number, length: { is: 3, message: "room number must be three digits" }
end
