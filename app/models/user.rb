class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable

  # custom validation instead of devise validatable, because we are using login instead of email
  validates :login, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, length: { in: 6..128 }
end
