class UserApplication < ApplicationRecord
  default_scope { order(:position) }

  belongs_to :user
  belongs_to :application

  acts_as_list scope: :user
end
