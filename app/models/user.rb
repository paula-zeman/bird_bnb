class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :birds
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :location, presence: true
end
