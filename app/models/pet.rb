class Pet < ApplicationRecord
  belongs_to :client
  has_many :type
  has_many :medications
  has_many :gender
  # has_many :pay


  
  validates :name, presence: true
  validates :type, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :medication, presence: true
  # validates :pay, presence: true

  
end
