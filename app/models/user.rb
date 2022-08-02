class User < ApplicationRecord
    has_many :accuracies
    has_many :games, through: :accuracies
    has_secure_password
end
