class Concert < ApplicationRecord
    belongs_to :group

    validates :participant, presence: :true

end
