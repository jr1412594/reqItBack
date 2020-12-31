class User < ApplicationRecord
    has_many :requests
    has_many :items, through: :requests
    validates :room_number, length: { is: 3}
end
