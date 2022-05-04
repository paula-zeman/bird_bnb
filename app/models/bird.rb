class Bird < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :breed, inclusion: { in: ["Albatross", "Chicken", "Emu", "Flamingo", "Owl", "Parrot", "Penguin", "Turkey"] }
  validates :price, presence: true, numericality: { only_integer: true }
  has_one_attached :image
end
