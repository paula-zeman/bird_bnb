class Bird < ApplicationRecord

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :breed, inclusion: { in: ["Albatross", "Chicken", "Emu", "Flamingo", "Owl", "Parrot", "Penguin", "Turkey"] }
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  has_one_attached :image
end
