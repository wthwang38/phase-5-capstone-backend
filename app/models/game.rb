class Game < ApplicationRecord
    has_many :accuracies;
    has_many :users, through: :accuracies
end
