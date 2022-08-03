class User < ApplicationRecord
    has_many :accuracies
    has_many :games, through: :accuracies
    
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, on: :create
    
    has_secure_password

    def total_missed
       self.accuracies.sum{|acc| acc.missed} 
    end

    def total_hits
        self.accuracies.sum{|acc| acc.hit}
    end

    def total_total
        self.accuracies.sum{|acc| acc.total}
    end

    def score
        hits = self.total_hits*20
        total = self.total_total*15
        missed = self.total_missed*10
        hits*total-missed

    end
    # def avg_time
        

    #         arr = self.accuracies.map{|i| i.timeba}
    #             tot = arr.sum
    #             len = arr.length
    #             avg = tot/len
    #         avg
    # end

end
