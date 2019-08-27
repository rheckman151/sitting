class Pet < ApplicationRecord
  belongs_to :client
  has_many :type
  
  validates :name, presence: true
end
