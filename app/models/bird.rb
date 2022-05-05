class Bird < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  # validates :type, inclusion: { in: ["Albatross", "Chicken", "Emu", "Flamingo", "Owl", "Parrot", "Penguin", "Turkey"] }
  validates :price, presence: true, numericality: { only_integer: true }
  has_one_attached :image
end
