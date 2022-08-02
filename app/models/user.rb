class User < ApplicationRecord
    has_many :accuracies
    has_many :games, through: :accuracies
    
    validates :name, presence: true, uniqueness: true
    validates :password, presence: true, on: :create
    
    has_secure_password

    def totalMissed
        self.accuracies
    end

    def totalHits
    end

    def totalTotal
    end

    def avgTime
    end

    def avgPercent
    end
end
