class Group < ApplicationRecord
    has_many :concert, dependent: :destroy
    
    enum gender: %w[Rock Pop Balads]

    validates :name, :member, presence: :true

    def to_s
        name
    end

    def concert_count
        self.concert.count
    end

    # def concert_participants
        
    # end
    
end
