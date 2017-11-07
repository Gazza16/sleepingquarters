class User < ApplicationRecord
  # validates_presence_of :name
  has_many :boats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
end
