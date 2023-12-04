# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Application.create(
  name: 'Google',
  description: 'Search Engine',
  color: 'Red',
  default_status: 'Yes',
  link: 'http://www.google.com'
)
Application.create(
  name: 'Wisc',
  description: 'UW homepage',
  color: 'Blue',
  default_status: 'No',
  link: 'http://www.wisc.edu'
)
Application.create(
  name: 'GLBRC',
  description: 'Great Lakes Bioenergy Research Center',
  color: 'Yellow',
  default_status: 'Yes',
  link: 'http://www.glbrc.org'
)
Application.create(
  name: 'WEI',
  description: 'Wisconsin Engery Institute',
  color: 'Green',
  default_status: 'No',
  link: 'http://energy.wisc.edu/'
)
Application.create(
  name: 'Twitter',
  description: 'Twitter',
  color: 'Purple',
  default_status: 'No',
  link: 'http://twitter.com/'
)

user_password = !ENV['SEED_PASSWORD'].nil? ? ENV['SEED_PASSWORD'] : 'password'

User.create(
  login: 'user1',
  password: user_password,
  password_confirmation: user_password,
)
User.create(
  login: 'user2',
  password: user_password,
  password_confirmation: user_password,
)
User.create(
  login: 'user3',
  password: user_password,
  password_confirmation: user_password,
)
