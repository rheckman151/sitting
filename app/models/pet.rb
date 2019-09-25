class Pet < ApplicationRecord
  belongs_to :client
  has_many :types
  has_many :medications
  has_many :genders
  has_many :pays


  
  validates :name, presence: true
  validates :type, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :medication, presence: true
  validates :pay, presence: true

  
end
