class UserApplication < ApplicationRecord
  belongs_to :user
  belongs_to :application

  validates :position, presence: true, numericality: { only_integer: true }

  acts_as_list
end
