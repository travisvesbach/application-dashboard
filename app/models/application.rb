class Application < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :default_status, presence: true, inclusion: { in: ['Yes', 'No'] }
  validates :link, presence: true

  has_many :user_applications
  has_many :users, through: :user_applications
end
