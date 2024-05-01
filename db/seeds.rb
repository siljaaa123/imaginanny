# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Character.destroy_all
puts 'Creating characters and users...'
user = User.create!(
  email: Faker::Internet.email,
  password: "password", # You can set a default password here
  password_confirmation: "password",
  first_name: "Tom", # First name related to the character
  last_name: "Riddle", # Last name related to the character
  phone_nr: Faker::PhoneNumber.phone_number, # Random phone number
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "Little Hangleton" # Dark and mysterious address
)
# Seed data for Voldemort character
Character.create!(
  character_name: "Lord Voldemort",
  category: "Villains",
  description: "Treat your little one to a taste of dark magic with Lord Voldemort! Known for his expertise in the Dark Arts, Voldemort offers a unique babysitting experience that will leave your child spellbound. With a background in wizardry and a knack for mischief, Voldemort is perfect for children who enjoy a bit of adventure. Despite his dark reputation, rest assured that your child's safety is his top priority. Let Voldemort take care of your little wizard or witch and watch as they embark on magical adventures together!",
  price: 25,
  user_id: user.id,
  image_url: cl_image_tag("voldemort.jpg")
)
