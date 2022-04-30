class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :birds
<<<<<<< HEAD
  
=======


>>>>>>> f5016e20dbad4de100e22dc4654ba3ba07293837
  validates :email, presence: true, uniqueness: true
end
