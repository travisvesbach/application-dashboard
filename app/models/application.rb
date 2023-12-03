class Application < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :default_status, presence: true, inclusion: { in: ["Yes", "No"] }
  validates :link, presence: true

  has_many :user_applications
  has_many :users, through: :user_applications

  # dynamic tailwind classes need to be added to the safelist in tailwind.config.js
  def background_class
    "bg-#{self.color.downcase}-300 hover:bg-#{self.color.downcase}-400"
  end
end
