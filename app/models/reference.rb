class Reference < ApplicationRecord
    belongs_to :client

    validates :post, presence: true
end
