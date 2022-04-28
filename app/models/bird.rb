class Bird < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :type, presence: true, length: { minimum: 2 }
  validates :price, presence: true, numericality: { only_integer: true }
end
