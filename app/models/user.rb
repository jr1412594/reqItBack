class User < ApplicationRecord
    has_many :requests
    has_many :items, through: :requests
end
