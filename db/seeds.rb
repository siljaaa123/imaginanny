# You need the images folder and its path
require 'open-uri'

puts 'Cleaning database...'
Character.destroy_all
User.destroy_all
puts 'Creating characters and users...'

user = User.create!(
  email: 'voldemort@gmail.com',
  password: "password",
  password_confirmation: "password",
  first_name: "Tom",
  last_name: "Riddle",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "Little Hangleton"
)
character = Character.new(
  character_name: "Lord Voldemort",
  category: "Villains",
  description: "Treat your little one to a taste of dark magic with Lord Voldemort! Known for his expertise in the Dark Arts, Voldemort offers a unique babysitting experience that will leave your child spellbound. With a background in wizardry and a knack for mischief, Voldemort is perfect for children who enjoy a bit of adventure. Despite his dark reputation, rest assured that your child's safety is his top priority. Let Voldemort take care of your little wizard or witch and watch as they embark on magical adventures together!",
  price: 25,
  user_id: user.id
)
character.photo.attach(io: URI.open("https://res.cloudinary.com/djvyamesz/image/upload/v1714641303/development/mqomgpntqo6z0yfxkgv3ek1rp3o3.webp"), filename: 'image.jpg')
character.save!

addams_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Morticia",
  last_name: "Addams",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "Spooky Manor"
)
addams_family = Character.new(
  character_name: "Addams Family",
  category: "Family",
  description: "Welcome to the Addams Family! With their quirky and macabre charm, this eccentric family is ready to entertain and care for your little ones. From Morticia's elegance to Wednesday's dark humor and Gomez's enthusiasm, your child will experience a babysitting adventure like no other. Treat your child to a spooky yet delightful time with the Addams Family!",
  price: 40,
  user_id: addams_user.id
)
addams_family.photo.attach(io: URI.open("https://res.cloudinary.com/djvyamesz/image/upload/v1714641206/development/04j4z5or6omvg6m7doetr5rajha4.jpg"), filename: 'image.jpg')
addams_family.save!

